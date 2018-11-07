package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Collection;
import java.util.TreeMap;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DogDAO {
	private Connection connectDB() {
		Connection conn = null;
		
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/oraDB");
			conn = ds.getConnection();
		} catch(Exception e){
			System.out.println("예외처리!!");
		}
		return conn;
	}
	
	public int[][] dogVector() {
		Connection conn = connectDB();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			int[][] no = new int[31][16];
			
			for (int i = 1; i <= 31; i++) {
				int id = i;
				
				String sql = "select a,b,c,d,e,f,g,h,i,j,l,m,n,o,p,q from dogVector where id=?";
				stmt = conn.prepareStatement(sql);
				stmt.setInt(1, id);
				rs = stmt.executeQuery();
				
				if (rs.next()) {
					for (int j = 1; j <= 16; j++) {
						no[(i - 1)][(j - 1)] = rs.getInt(j);
					}
				}
			}
			return no;
		} catch (Exception e) {
			System.out.println("DogVector에서 예외발생!!!!!!!---" + e);
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public DogInfoVO dogInfo(int id) {
		Connection conn = connectDB();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DogInfoVO dvo = null;
		
		try {
			pstmt = conn.prepareStatement("select name, ename, content, img from DogInfo where id=?");		
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dvo = new DogInfoVO();
				
				dvo.setName(rs.getString(1));
				dvo.setEname(rs.getString(2));
				dvo.setContent(rs.getString(3));
				dvo.setImg(rs.getString(4));
			}
		} catch(Exception e) {
			System.out.println("예외처리!!");
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dvo;
	}

	public double[] calculateEuclidean(int[] array1, int[][] dv) {
		double[] sum = new double[31];
		double[] result = new double[31];
		
		for (int i = 0; i < 31; i++) {
			for (int j = 0; j < 16; j++) {
				sum[i] += Math.pow(array1[j] - dv[i][j], 2.0D);
			}
			result[i] = Math.sqrt(sum[i]);
		}
		return result;
	}
	
	public Integer[] topThree(double[] ecd) {
		TreeMap<Double, Integer> a = new TreeMap();
		
		for (int i = 0; i < ecd.length; i++) {
			a.put(Double.valueOf(ecd[i]), Integer.valueOf(i));
		}
		
		Collection<Integer> k = a.values();
		Integer[] m = (Integer[])k.toArray(new Integer[k.size()]);
		Integer[] topThree = new Integer[3];
		
		topThree[0] = m[0];
		topThree[1] = m[1];
		topThree[2] = m[2];
		
		return topThree;
	}
}