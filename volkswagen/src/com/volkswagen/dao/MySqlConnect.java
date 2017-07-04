package com.volkswagen.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;
class MySqlConnect {
	Connection conn=null;
	public static Connection ConnectDB (){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/volkswagen","root","");
			return conn;
		}
		catch(Exception e){
			JOptionPane.showMessageDialog(null,e);
			return null;
		}
		
	}

}
