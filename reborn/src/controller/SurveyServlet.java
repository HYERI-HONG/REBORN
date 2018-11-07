package controller;

import java.io.IOException;
import java.util.Arrays;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DogDAO;
import model.DogInfoVO;

@WebServlet({"/survey"})
public class SurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String a = request.getParameter("foo");
		String[] sort = a.split(",");
		Arrays.sort(sort);
		
		int[] survey = new int[sort.length];
		for (int i = 0; i < sort.length; i++) {
			survey[i] = Integer.parseInt(sort[i].replaceAll("[^0-9]", ""));
		}
		
		DogDAO dao = new DogDAO();
		int[][] dv = dao.dogVector();
		
		double[] result = dao.calculateEuclidean(survey, dv);
		Integer[] match = dao.topThree(result);
		
		DogInfoVO m1 = new DogInfoVO();
		DogInfoVO m2 = new DogInfoVO();
		DogInfoVO m3 = new DogInfoVO();
		
		m1 = dao.dogInfo(match[0].intValue());
		m2 = dao.dogInfo(match[1].intValue());
		m3 = dao.dogInfo(match[2].intValue());
		
		request.setAttribute("m1", m1);
		request.setAttribute("m2", m2);
		request.setAttribute("m3", m3);
		
		request.getRequestDispatcher("/view/match.jsp").forward(request, response);
	}
}