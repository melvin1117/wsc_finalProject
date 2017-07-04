package com.volkswagen.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.volkswagen.dao.MySqlConnect;
import com.volkswagen.pojo.CustomerBean;
import com.volkswagen.pojo.cityBean;
import com.volkswagen.pojo.selectedCityBean;

public class DaoClass {
	
	static Connection conn;
	static Statement st=null;
	static ResultSet rs;
	public static boolean loginValidate(String username, String password) throws SQLException
	{
	Boolean valid=false;
	conn=(Connection)MySqlConnect.ConnectDB();
	String sql_check="SELECT count(*) as tot from users where username=\""+username+"\" and password=\""+password+"\"";
//	System.out.println("in dao ");
		st=(Statement)conn.createStatement();
		 rs=st.executeQuery(sql_check);
		rs.next();
		int count=rs.getInt("tot");
		if(count!=0)
		{
			valid=true;
			return valid;
		}
		
	return valid;
	}
	public static boolean registerClient(String name,String email,String mob,String car_model,String vehicle_number,String adr) throws SQLException
	{
		String sql_insert="INSERT INTO clients (name,email,mob,car_model,vehicle_number,adr) values('"+name+"','"+email+"','"+mob+"','"+car_model+"','"+vehicle_number+"','"+adr+"')";
		System.out.println(sql_insert);
		
		st=(Statement) conn.createStatement();
		int i=st.executeUpdate(sql_insert);
		if(i>0)
		{
			
			return true;
		}
		return false;
		
	}
	public static boolean registerVender(String vname,String oname,String email,String mob,String adr,String city,String state,String country) throws SQLException
	{
		String sql_insert_vender="INSERT INTO venders (vname,oname,email,mob,adr,city,state,country) values('"+vname+"','"+oname+"','"+email+"','"+mob+"','"+adr+"','"+city+"','"+state+"','"+country+"')";
		System.out.println(sql_insert_vender);
		
		st=(Statement) conn.createStatement();
		int i=st.executeUpdate(sql_insert_vender);
		if(i>0)
		{
			
			return true;
		}
		return false;
		
	}
	public List getAllCustomers() {
	    List customers = new ArrayList();
	    try {
	    	String sql = "SELECT * FROM `clients`";
	       // PreparedStatement ps = conn.prepareStatement(sql);
	        st=conn.createStatement();
	        ResultSet rs = st.executeQuery(sql);
	       // System.out.println("yes");
	        while (rs.next()) {
	            CustomerBean customerBean = new CustomerBean();
	            customerBean.setName(rs.getString("name"));
	            customerBean.setMob(rs.getString("mob"));   
	            customerBean.setEmail(rs.getString("email"));
	            customerBean.setCar_model(rs.getString("car_model"));
	            customerBean.setVehicle_number(rs.getString("vehicle_number"));
	            customerBean.setAdr(rs.getString("adr"));
	            customerBean.setCid(rs.getInt("cid"));
	            customers.add(customerBean);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return customers;
	}
	public List getAllCity() {
	    List city = new ArrayList();
	    try {
	    	String sql = "SELECT DISTINCT city FROM `venders`";
	       // PreparedStatement ps = conn.prepareStatement(sql);
	        st=conn.createStatement();
	        ResultSet rs = st.executeQuery(sql);
	        
	        System.out.println("yes");
	        while (rs.next()) {
	            cityBean citybean = new cityBean();
	            citybean.setCity(rs.getString("city"));
	            city.add(citybean);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return city;
	}
	public List getSelectedCity(String city) {
	    List cityList = new ArrayList();
	    try {
	    	String sql = "SELECT * FROM `venders` where city=\""+city+"\"";
	       // PreparedStatement ps = conn.prepareStatement(sql);
	        st=conn.createStatement();
	        ResultSet rs = st.executeQuery(sql);
//	        
//	        System.out.println("yes");
	        while (rs.next()) {
	            selectedCityBean citybean = new selectedCityBean();
	            citybean.setCity(rs.getString("city"));
	            citybean.setVname(rs.getString("vname"));
	            citybean.setOname(rs.getString("oname"));
	            citybean.setState(rs.getString("state"));
	            citybean.setCountry(rs.getString("country"));
	            citybean.setMob(rs.getString("mob"));
	            citybean.setAdr(rs.getString("adr"));
	            citybean.setEmail(rs.getString("email"));
	            cityList.add(citybean);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return cityList;
	}
}
