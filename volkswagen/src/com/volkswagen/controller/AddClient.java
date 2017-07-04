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
 * Servlet implementation class AddClient
 */
@WebServlet("/AddClient")
public class AddClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddClient() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String mob=req.getParameter("mob");
		String car_model=req.getParameter("car_model");
		String vehicle_number=req.getParameter("vehicle_number");
		String adr=req.getParameter("adr");
		PrintWriter out=res.getWriter();
		try {
			boolean insertSuccess=DaoClass.registerClient(name,email,mob,car_model,vehicle_number,adr);
			if(insertSuccess)
			{
				out.println("<script> alert(\"Client added successfully.\"); window.location.replace(\"admin_dashboard.jsp\");</script>");
			}
			else
				out.println("<script> alert(\"There was problem inserting the record. Try Again.\"); window.location.replace(\"admin_dashboard.jsp\");</script>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
