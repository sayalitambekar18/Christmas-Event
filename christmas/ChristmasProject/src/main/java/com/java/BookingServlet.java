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

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String um = request.getParameter("Umail");
		String date = request.getParameter("date");
		String qty = request.getParameter("qty");
		String price = request.getParameter("price");
		String venue = request.getParameter("venue");


	
		BookingBean b = new BookingBean();
		b.setUmail(um);
        b.setDate(date);
        b.setPrice(price);
        b.setVenue(venue);
        b.setQty(qty);

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ChristProject", "root","");
			PreparedStatement ps = con.prepareStatement("insert into booking (um,date,price,venue,qty)values(?,?,?,?,?)");
			ps.setString(1, um);
			ps.setString(2, date);
			ps.setString(3, price);
			ps.setString(4, venue);
			ps.setString(5, qty);


			int k = ps.executeUpdate();
			if (k > 0) {
				response.sendRedirect("done.html");

			} else {
				pw.print("error....");

			}

		} catch (Exception e1) {
			System.out.println(e1);
		}

	}
	
	}


