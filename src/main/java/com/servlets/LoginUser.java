package com.servlets;

import java.io.IOException;

import org.hibernate.Session;

import com.entities.Register;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			System.out.println(username + " " +password);
			Session session = FactoryProvider.getFactory().openSession();	

			String qry ="from Register where username='"+username +"'";
			Register result = session.createQuery(qry, Register.class).getSingleResult();			
			session.close();
			String un= result.getUsername();
			String p = result.getPassword();
			if (un.equals(username) && p.equals(password)) {
				response.sendRedirect("add_record.jsp");
			}else {
				
				response.sendRedirect("reset_pass.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


}
