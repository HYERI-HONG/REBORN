package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CenterDAO;
import model.CenterInfoVO;
import model.PagingVO;

@WebServlet("/shelters")
public class AnimalSheltersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CenterDAO cdao = new CenterDAO();
		ArrayList<CenterInfoVO> list = null;
		
		int currentPage = Integer.parseInt(request.getParameter("page"));
		int count = cdao.listCount();

		//System.out.println(currentPage);
		PagingVO pvo = new PagingVO(count, currentPage);
		
		int start = pvo.getPageStart();
		int end = pvo.getPageEnd();
		//System.out.println(start + " " + end);
		
		String city = request.getParameter("city");
		
		switch(city) {
		case "seoul":
			list = cdao.listAll("서울특별시");
			break;
		case "busan":
			list = cdao.listAll("부산광역시");
			break;
		case "daegu":
			list = cdao.listAll("대구광역시");
			break;
		case "incheon":
			list = cdao.listAll("인천광역시");
			break;
		case "gwangju":
			list = cdao.listAll("광주광역시");
			break;
		case "daejeon":
			list = cdao.listAll("대전광역시");
			break;
		case "ulsan":
			list = cdao.listAll("울산광역시");
			break;
		case "gyeonggi":
			list = cdao.listAll("경기도");
			break;
		case "gangwon":
			list = cdao.listAll("강원도");
			break;
		case "chungbuk":
			list = cdao.listAll("충청북도");
			break;
		case "chungnam":
			list = cdao.listAll("충청남도");
			break;
		case "jeonbuk":
			list = cdao.listAll("전라북도");
			break;
		case "jeonnam":
			list = cdao.listAll("전라남도");
			break;
		case "gyeongbuk":
			list = cdao.listAll("경상북도");
			break;
		case "gyeongnam":
			list = cdao.listAll("경상남도");
			break;
		case "jeju":
			list = cdao.listAll("제주특별자치도");
			break;
		default :
			list = cdao.listAll(start, end);
		}
		
		//System.out.println(list.size());
		if(list != null && list.size()>0) {
			request.setAttribute("list", list);
			
		}
		request.setAttribute("pvo", pvo);
		
		request.getRequestDispatcher("/view/shelters.jsp").forward(request, response);
	}
}