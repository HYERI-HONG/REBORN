package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSeparatorUI;

import model.DogDAO;
import model.CenterInfoVO;

@WebServlet({"/adoption"})
public class AdoptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("lo"));
		/*DogDAO dao = new DogDAO();
		
		ArrayList<CenterInfoVO> ldl = dao.LostDogList();
		
		if ((ldl != null) && (ldl.size() > 0)){
			request.setAttribute("ldl", ldl);
		}
		String com = request.getParameter("action");
		if (com != null){
			if (com.equals("a")){
				String loc = request.getParameter("lo");
				
				if (loc.equals("seoul")){
					ArrayList<CenterInfoVO> locarray = dao.location("�����");
					request.setAttribute("ldl", locarray);
				}
				else if (loc.equals("gg")){
					ArrayList<CenterInfoVO> locarray = dao.location("��⵵");
					request.setAttribute("ldl", locarray);
				}
				else if (loc.equals("in")){
					ArrayList<CenterInfoVO> locarray = dao.location("��õ");
					request.setAttribute("ldl", locarray);
				}
				else if (loc.equals("all"))
				{
					ArrayList<CenterInfoVO> locarray = dao.location("�����о�");
					request.setAttribute("ldl", locarray);
				}
			}
      else if (com.equals("b")){
    	  String sex = request.getParameter("sex");
    	  
    	  if (sex.equals("b")){
    		  ArrayList<CenterInfoVO> sexarray = dao.Sex("����");
    		  request.setAttribute("ldl", sexarray);
    	  }
    	  else if (sex.equals("g"))
    	  {
    		  ArrayList<CenterInfoVO> sexarray = dao.Sex("����");
    		  request.setAttribute("ldl", sexarray);
    	  }
     }
     else if (com.equals("c")){
    	 String type = request.getParameter("type");
    	 
    	 if (type.equals("poo")){
    		 ArrayList<CenterInfoVO> typearray = dao.type(" Ǫ��");
    		 request.setAttribute("ldl", typearray);
        }
        else if (type.equals("mal")){
        	ArrayList<CenterInfoVO> typearray = dao.type(" ��Ƽ��");
        	request.setAttribute("ldl", typearray);
        }
        else if (type.equals("mix")){
        	ArrayList<CenterInfoVO> typearray = dao.type(" �ͽ�");
        	request.setAttribute("ldl", typearray);
        }
        else if (type.equals("pe")){
        	ArrayList<CenterInfoVO> typearray = dao.type(" ��Ű��");
        	request.setAttribute("ldl", typearray);
        }
        else if (type.equals("yo")){
        	ArrayList<CenterInfoVO> typearray = dao.type(" ��ũ��");
        	request.setAttribute("ldl", typearray);
        }
      }
    }*/
    request.getRequestDispatcher("/view/adoption.jsp").forward(request, response);
  }
}