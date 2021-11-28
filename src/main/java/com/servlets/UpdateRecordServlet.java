package com.servlets;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Record;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateRecordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateRecordServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

		try {
			String firstName = request.getParameter("firstName");
			String middleName = request.getParameter("middleName");
			String lastName = request.getParameter("lastName");
			String contact = request.getParameter("contact");
			String nationality = request.getParameter("nationality");
			String state = request.getParameter("state");
			String district = request.getParameter("district");
			String city = request.getParameter("city");
			String wardStr = request.getParameter("ward");
			int ward = Integer.parseInt(wardStr);
			String gender = request.getParameter("gender");
			String dateStr = request.getParameter("date");
			Date date = new SimpleDateFormat("yyyy-mm-dd")
                    .parse(dateStr);
			
			int familyId = Integer.parseInt(request.getParameter("familyId").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			Record record = s.get(Record.class, familyId);
			record.setFirstName(firstName);
			record.setMiddleName(middleName);
			record.setLastName(lastName);
			record.setContact(contact);
			record.setNationality(nationality);
			record.setState(state);
			record.setDistrict(district);
			record.setCity(city);
			record.setWard(ward);
			record.setGender(gender);
			record.setDate(date);
			
			tx.commit();
			s.close();
			
			response.sendRedirect("all_records.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
