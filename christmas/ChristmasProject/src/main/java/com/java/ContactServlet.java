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

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String un = request.getParameter("Uname");
		String um = request.getParameter("Umail");
		String mn = request.getParameter("Mob");
		String ume = request.getParameter("message");

		RegisterBean b = new RegisterBean();
		b.setUname(un);
		b.setUmail(um);
		b.setMob(mn);
		b.setMessage(ume);

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ChristProject", "root","");
			PreparedStatement ps = con.prepareStatement("insert into contact values(?,?,?,?)");
			ps.setString(1, un);
			ps.setString(2, um);
			ps.setString(3, mn);
			ps.setString(4, ume);

			int k = ps.executeUpdate();
			if (k > 0) {
				response.sendRedirect("index.html");
			} else {
				pw.print("error....");

			}

		} catch (Exception e1) {
			System.out.println(e1);
		}

	}

}
