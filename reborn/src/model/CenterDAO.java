package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CenterDAO {
	private Connection connectDB() {
		Connection conn = null;
		
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/oraDB");
			conn = ds.getConnection();
		} catch(Exception e){
			System.out.println("抗寇贸府!");
		}
		return conn;
	}
	
	public ArrayList<CenterInfoVO> listAll(){
		Connection conn = connectDB();
		ArrayList<CenterInfoVO> result = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt=conn.prepareStatement("select city, center, tel, addr from centerInfo");
			rs = pstmt.executeQuery();
			
			result = new ArrayList<CenterInfoVO>();
			CenterInfoVO civo = null;
			
			while(rs.next()){
				civo = new CenterInfoVO();
				
				civo.setCity(rs.getString(1));
				civo.setCenter(rs.getString(2));
				civo.setTel(rs.getString(3));
				civo.setAddr(rs.getString(4));
				
		    	result.add(civo);
		    }
		} catch (Exception e) {
			System.out.println("抗寇贸府!!");
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result; 
	}
	
	public int listCount(){
		Connection conn = connectDB();
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt=conn.prepareStatement("select count(*) from centerInfo");
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				count = rs.getInt(1);
		    }
		} catch (Exception e) {
			System.out.println("抗寇贸府!!");
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return count; 
	}
	
	public ArrayList<CenterInfoVO> listAll(int start, int end){
		Connection conn = connectDB();
		ArrayList<CenterInfoVO> result = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			pstmt=conn.prepareStatement("select city, center, tel, addr from centerInfo where id between ? and ?");
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();		
			
			result = new ArrayList<CenterInfoVO>();
			CenterInfoVO civo = null;
			
			while(rs.next()){
				civo = new CenterInfoVO();
				
				civo.setCity(rs.getString(1));
				civo.setCenter(rs.getString(2));
				civo.setTel(rs.getString(3));
				civo.setAddr(rs.getString(4));
				
		    	result.add(civo);
		    }
		}catch (Exception e) {
			System.out.println("抗寇贸府!!");
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result; 
	}
	
	public ArrayList<CenterInfoVO> listAll(String city){
		Connection conn = connectDB();
		ArrayList<CenterInfoVO> result = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt=conn.prepareStatement("select city, center, tel, addr from centerInfo where city=?");
			pstmt.setString(1, city);
			rs = pstmt.executeQuery();
			
			result = new ArrayList<CenterInfoVO>();
			CenterInfoVO civo = null;
			
			while(rs.next()){
				civo = new CenterInfoVO();
				
				civo.setCity(rs.getString(1));
				civo.setCenter(rs.getString(2));
				civo.setTel(rs.getString(3));
				civo.setAddr(rs.getString(4));
				
		    	result.add(civo);
		    }
		} catch (Exception e) {
			System.out.println("抗寇贸府!!");
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result; 
	}
}