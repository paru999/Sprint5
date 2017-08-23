package com.DBconnection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DB_insert1 extends DB_connection 
{
	
	
	public String  insert(String firstname, String lastname, String phoneno, String email, String password,String file, String dob , String radio) throws SQLException
	{
		PreparedStatement pt;
					pt = super.conn
			.prepareStatement("insert into tbl_user(vchr_firstname, vchr_lastname,vchr_phone,vchr_email,vchr_password,vchr_image,  date_DOB ,  vchr_gender)values(?,?,?,?,?,?,?,?)");
			pt.setString(1,firstname);
			pt.setString(2,lastname);
			pt.setString(3,phoneno);
			pt.setString(4,email);
			pt.setString(5,password);
			pt.setString(6,file);
			pt.setString(7, dob);
			
			pt.setString(8,radio);
			boolean y=pt.execute();
			//pt.getUsername();
			
			System.out.println("inserted");
			//return y;
			return "success";
			
			
			
				
		
		}
	public int select(String mail, String pwd)
	{
		PreparedStatement pt1;
		try {
			pt1 = super.conn
			
		.prepareStatement("call face(?,?)");
			pt1.setString(1, mail);
			pt1.setString(2, pwd);
			ResultSet rs = pt1.executeQuery();
            while(rs.next())
            {
                     String email=rs.getString("vchr_email");
                     String password=rs.getString("vchr_password");
                     System.out.println("email:"+email + "pwd:"+password);
            }
				pt1.execute();
			//System.out.println("selected");
		}
		catch (SQLException e) {
			e.printStackTrace();
			//System.out.println("not inserted");
		}
		return 1;
		
	}
	public ResultSet emailerror(String mail) throws SQLException
	{
		PreparedStatement pt2;
		pt2=super.conn.
		prepareStatement(" select * from tbl_user where vchr_email=?");
				pt2.setString(1,mail);
     ResultSet rs1 = pt2.executeQuery();
     pt2.execute();
          
          return rs1;
	}
	
	   
	
	
	public ResultSet store(String username, String password) throws SQLException
	{
		PreparedStatement pt1;
		pt1=super.conn.
		//prepareStatement("select email,password from tbl_user where email=?, password=?");
				prepareStatement("call face(?,?)");
		
				
				
		pt1.setString(1,username);
		pt1.setString(2,password);
		//pt1.execute();
		 // System.out.println( pt1.execute());
     ResultSet rs = pt1.executeQuery();
   
          
          return rs;
		
	}
	
	
	
	
	
}
