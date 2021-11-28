package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Record;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteRecordServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int familyId = Integer.parseInt(request.getParameter("record_familyId").trim()); // trim removes space if any
			Session s = FactoryProvider.getFactory().openSession();
			// permanent changes in database wont occur if we dont use this
			Transaction tx = s.beginTransaction();
			Record record = s.get(Record.class, familyId);
			s.delete(record);
			tx.commit();
			s.close();
			response.sendRedirect("all_records.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
