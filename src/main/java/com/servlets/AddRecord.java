package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Record;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddRecord() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// title, content fetch
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Record record = new Record();
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(record);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;'>Record is added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_records.jsp'>View All Records</a></h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
