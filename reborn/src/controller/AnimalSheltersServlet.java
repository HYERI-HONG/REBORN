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
			list = cdao.listAll("����Ư����");
			break;
		case "busan":
			list = cdao.listAll("�λ걤����");
			break;
		case "daegu":
			list = cdao.listAll("�뱸������");
			break;
		case "incheon":
			list = cdao.listAll("��õ������");
			break;
		case "gwangju":
			list = cdao.listAll("���ֱ�����");
			break;
		case "daejeon":
			list = cdao.listAll("����������");
			break;
		case "ulsan":
			list = cdao.listAll("��걤����");
			break;
		case "gyeonggi":
			list = cdao.listAll("��⵵");
			break;
		case "gangwon":
			list = cdao.listAll("������");
			break;
		case "chungbuk":
			list = cdao.listAll("��û�ϵ�");
			break;
		case "chungnam":
			list = cdao.listAll("��û����");
			break;
		case "jeonbuk":
			list = cdao.listAll("����ϵ�");
			break;
		case "jeonnam":
			list = cdao.listAll("���󳲵�");
			break;
		case "gyeongbuk":
			list = cdao.listAll("���ϵ�");
			break;
		case "gyeongnam":
			list = cdao.listAll("��󳲵�");
			break;
		case "jeju":
			list = cdao.listAll("����Ư����ġ��");
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