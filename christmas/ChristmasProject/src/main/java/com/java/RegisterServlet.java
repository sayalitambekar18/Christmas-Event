package com.java;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String Name = request.getParameter("Uname");
		String UMail = request.getParameter("Umail");
		String Mob = request.getParameter("Mob");
		String Pass = request.getParameter("Upass");

		RegisterBean b = new RegisterBean();
		b.setUname(Name);
		b.setUmail(UMail);
		b.setMob(Mob);
		b.setUpass(Pass);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ChristProject", "root","");
			PreparedStatement ps = con.prepareStatement("insert into registration values(?,?,?,?)");
			ps.setString(1, Name);
			ps.setString(2, UMail);
			ps.setString(3, Mob);
			ps.setString(4, Pass);

			int k = ps.executeUpdate();
			
			if (k > 0) {
				response.sendRedirect("login.html");

			} else {
				pw.print("error....");

			}

		} catch (Exception e1) {
			System.out.println(e1);
		}

	}

}
