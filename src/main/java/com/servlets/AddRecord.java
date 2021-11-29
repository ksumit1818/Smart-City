package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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

public class AddRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddRecord() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			int familyId;
			//////to get max id from database
			try {
				
				String qry = "SELECT MAX(familyId) FROM Record";
				Session s = FactoryProvider.getFactory().openSession();
				int result = s.createQuery(qry, Integer.class).getSingleResult();
				System.out.println("here: "+ result);
				s.close();
				familyId = result +1;
				
			}catch (Exception e) {
				familyId = 1;
			}
			
			
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
			
			
	        
			Record record = new Record(familyId, firstName, middleName, lastName, contact, nationality, state, district, city, ward, gender, date);
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(record);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;'>Record is added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_records.jsp'>View All Records</a></h1>");
			out.println("<h1 style='text-align:center;'><a href='add_record.jsp'>Add Another Record</a></h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
