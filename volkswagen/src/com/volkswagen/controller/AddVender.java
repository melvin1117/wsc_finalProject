package com.volkswagen.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.volkswagen.dao.DaoClass;

/**
 * Servlet implementation class AddVender
 */
@WebServlet("/AddVender")
public class AddVender extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVender() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String vname=req.getParameter("vname");
	String oname=req.getParameter("oname");
	String email=req.getParameter("email");
	String mob=req.getParameter("mob");
	String city=req.getParameter("city");
	String state=req.getParameter("state");
	String adr=req.getParameter("adr");
	String country=req.getParameter("country");
	PrintWriter out=res.getWriter();
	try {
		System.out.println("yeys");
		boolean insertSuccess=DaoClass.registerVender(vname,oname,email,mob,adr,city,state,country);
		if(insertSuccess)
		{
			out.println("<script> alert(\"Vender added successfully.\"); window.location.replace(\"admin_dashboard.jsp\");</script>");
		}
		else
			out.println("<script> alert(\"There was problem inserting the record. Try Again.\"); window.location.replace(\"admin_dashboard.jsp\");</script>");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
	}


