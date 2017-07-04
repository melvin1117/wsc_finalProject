package com.volkswagen.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class showTemplate
 */
@WebServlet("/showTemplate")
public class showTemplate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showTemplate() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String customer_id=req.getParameter("cid");
		System.out.println("asiud");
		HttpSession session=req.getSession();
		session.setAttribute("currentId", customer_id);
		session.setMaxInactiveInterval(2*60);
		res.sendRedirect("printLetter.jsp");
	}

}
