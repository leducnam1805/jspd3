package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Bai2Controller")
public class Bai2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Bai2Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		// PrintWriter out = response.getWriter();
		String ten = request.getParameter("ten");
		// out.print("Họ Tên: "+ten+" </br>");
		request.setAttribute("ten", ten);
		RequestDispatcher rd = request.getRequestDispatcher("/bai2/CauChao.jsp");
		rd.forward(request, response);
	}

}
