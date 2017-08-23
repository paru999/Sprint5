package com.DBconnection;

import java.sql.PreparedStatement;
import java.sql.SQLException;


public class DB_newsfeed extends DB_connection
{
public String newsfeed(String name,int uid)
{
	
	try{
	PreparedStatement pt;
	pt = super.conn
.prepareStatement("insert into tbl_newsfeed(int_uid,vchr_status)values(?,?)");
	pt.setInt(1,uid);
pt.setString(2,name);
boolean y=pt.execute();
System.out.println("inserted");
	}
	catch(Exception e){
		e.printStackTrace();
	}

return "success";

	
}
}
