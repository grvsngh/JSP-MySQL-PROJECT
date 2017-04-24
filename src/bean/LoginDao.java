    package bean;  
	import java.sql.*; 
	import java.io.*;
	public class LoginDao {  
	  
	public static boolean validate(LoginBean bean){  
	boolean status=false;  
	try{  
	Connection con=ConnectionProvider.getCon();  
	              
	PreparedStatement ps=con.prepareStatement(  
	    "select * from user420 where email=? and pass=?");  
	  
	ps.setString(1,bean.getEmail());  
	ps.setString(2, bean.getPass());  
	              
	ResultSet rs=ps.executeQuery(); 
	System.out.println("result set before \n");
	/*while(rs.next()){
		System.out.println("result set :"+rs.getString(1)+" "+rs.getString(2));
	}*/
	status=rs.next();  
	              
	}catch(Exception e){}  
	  
	return status;  
	  
	}  
	}  


