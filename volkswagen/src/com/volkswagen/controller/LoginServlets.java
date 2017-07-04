package com.volkswagen.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

import com.volkswagen.dao.DaoClass;

/**
 * Servlet implementation class LoginServlets
 */
@WebServlet("/LoginServlets")
public class LoginServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlets() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=req.getParameter("username");
		String password=req.getParameter("pwd");
//		System.out.println("in post");
		PrintWriter out= res.getWriter();
		//out.print("in get");
		password=DigestUtils.sha256Hex(password);
		if(username.equals("admin")){
		
				try {
					//out.print("<br>in if");
//				System.out.println("in try");
					boolean validCheck= (boolean) DaoClass.loginValidate(username, password);
					//out.print("<br>in ifff");
					if(validCheck==true)
					{
					//	out.print("in if2");
					HttpSession session=req.getSession();
					session.setAttribute("currentUser", username);
					session.setMaxInactiveInterval(30*60);
					res.sendRedirect("admin_dashboard.jsp");
					}
					else
					{
						RequestDispatcher rd=getServletContext().getRequestDispatcher("/login.jsp");
						//PrintWriter out=res.getWriter();
						res.setContentType("text/html");
						//out.print("in else");
						out.println("<script> alert(\"Username or password is incorrect.\"); window.location.replace(\"login.jsp\");</script>");
						rd.include(req, res);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			
		
		}
		else
		{
			try {
				//out.print("<br>in if");
			//	System.out.println("in try");
				boolean validCheck= (boolean) DaoClass.loginValidate(username, password);
				//out.print("<br>in ifff");
				if(validCheck==true)
				{
				//	out.print("in if2");
				HttpSession session=req.getSession();
				session.setAttribute("currentUser", username);
				session.setMaxInactiveInterval(1*60);
				res.sendRedirect("user_dashboard.jsp");
				}
				else
				{
					RequestDispatcher rd=getServletContext().getRequestDispatcher("/login.jsp");
					//PrintWriter out=res.getWriter();
					res.setContentType("text/html");
					//out.print("in else");
					out.println("<script> alert(\"Username or password is incorrect.\"); window.location.replace(\"login.jsp\");</script>");
					rd.include(req, res);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
	}

}
