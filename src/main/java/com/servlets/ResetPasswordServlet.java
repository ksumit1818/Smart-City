package com.servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Register;
import com.helper.FactoryProvider;

public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ResetPasswordServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Session session = FactoryProvider.getFactory().openSession();	
			Transaction tx = session.beginTransaction();
			String qry ="from Register where username='"+username +"'";
			Register result = session.createQuery(qry, Register.class).getSingleResult();
			result.setPassword(password);
			tx.commit();
			session.close();
			
			response.sendRedirect("login.jsp");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
