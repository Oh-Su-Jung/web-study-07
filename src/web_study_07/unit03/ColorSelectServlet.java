package web_study_07.unit03;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ColorSelectServlet")
public class ColorSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setCharacterEncoding("UTF-8");
		
		int color = Integer.parseInt(request.getParameter("color"));
		/*request.setAttribute("arg", arg);
		request.setAttribute("val", val);*/
		
		Map<String, String> map = new HashMap<String, String>();
		
		switch (color) {
			case 1:
				map.put("att", "color:red;");
				map.put("txt", "»¡°­");
				break;
			case 2:
				map.put("att", "color:green;");
				map.put("txt", "ÃÊ·Ï");
				break;
			default:
				map.put("att", "color:blue;");
				map.put("txt", "ÆÄ¶û");
				break;
		}
		
		request.setAttribute("map", map);
		
		request.getRequestDispatcher("12_colorSelect.jsp").forward(request, response);
	}

}
