package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.Match;

/**
 * Servlet implementation class Bai3Controller
 */
@WebServlet("/Bai3Controller")
public class Bai3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final double PI = 3.14;

	public Bai3Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String dientich = request.getParameter("dientich");
		String bankinh = request.getParameter("bankinh");
		System.out.println(dientich);
		String notification = "";
		double dt = 0.0d;
		double bk = 0.0d;
		if (dientich == "" && bankinh == "") {
			notification = "Vui lòng nhập một trong hai trường";
			request.setAttribute("notification", notification);
		} else if (dientich != "" && bankinh != "") {
			notification = "Chỉ được nhập một giá trị..!";
			request.setAttribute("notification", notification);
		} else if (dientich != "" && bankinh == "") {
			dt = Double.parseDouble(dientich);
			bk = (double) Math.sqrt(dt/PI);
			request.setAttribute("bankinh", Double.toString(bk));
			request.setAttribute("dientich", dt);
		}else if (dientich == "" && bankinh != "") {
			
		}
		RequestDispatcher rd = request.getRequestDispatcher("/bai3/HinhTron.jsp");
		rd.forward(request, response);
	}

}
