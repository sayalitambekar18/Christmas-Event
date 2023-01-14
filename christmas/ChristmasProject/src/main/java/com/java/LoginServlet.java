package com.java;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String Email = request.getParameter("Umail");
		String Pass = request.getParameter("Cpassword");
		
		
		RegisterBean b = new RegisterBean();
		b.setUmail(Email);
		b.setUpass(Pass);
		
//		RequestDispatcher rd=request.getRequestDispatcher("wel.jsp");
//		rd.forward(request, response);
		
//		Under Try Catch Block DB connection code write
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // register driver 
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ChristProject","root",""); 
			PreparedStatement ps = con.prepareStatement("select Mail,Pass from registration where Mail=? and Pass=?"); 
			ps.setString(1, Email);
			ps.setString(2, Pass);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				if (Email.equals(rs.getString(1)) && Pass.equals(rs.getString(2))) {
					
					Cookie cook =new Cookie("mycookies",Email);
					response.addCookie(cook);
					RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
					rd.forward(request, response);
					
				}else {
            		response.sendRedirect("login.html");
            	}
			} else {
				response.sendRedirect("login.html");
			}

		} catch (Exception e2) {
			System.out.println(e2);
		}

		}
	
}
