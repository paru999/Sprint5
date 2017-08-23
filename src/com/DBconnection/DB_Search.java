package com.DBconnection;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;



import com.spring.SearchController;

public class DB_Search extends DB_connection {
	
	
	
	/*public String search(String name) throws SQLException
	{
		PreparedStatement pt2;
		pt2 = super.conn.prepareStatement("call searchname (?)");
		pt2.setString(1,name);
		pt2.execute();
		System.out.println(pt2);
     ResultSet rs1 = pt2.executeQuery();
     
     while(rs1.next())
     {
    	 String name1= rs1.getString("vchr_firstname");
    	 System.out.println("names:"+ name1);
		
     }
     
		return "name";
	}*/
	 public ArrayList<String> getFrameWork(String search) {
	        ArrayList<String> list = new ArrayList<String>();
	        PreparedStatement ps = null;
	        String data;
	        try {
	        ps = conn.prepareStatement("select * from  tbl_user where vchr_firstname  LIKE ?");
	                ps.setString(1, search + "%");
	                ResultSet rs = ps.executeQuery();
	                while (rs.next()) {
	                        data = rs.getString("vchr_firstname");
	                        list.add(data);
	                }
	        } catch (Exception e) {
	                System.out.println(e.getMessage());
	        }
	        return list;
	}
	 
	
	public String  frient(int user, int user1, int status, int  action) throws SQLException
	{
		PreparedStatement pt;
		pt= super.conn.prepareStatement("insert into tbl_relation(user_id_one,user_id_two,status,action_user_id)values(?,?,?,?)");
		pt.setInt(1,user);
		pt.setInt(2,user1);
		pt.setInt(3,status);
		pt.setInt(4,action);
		boolean x=pt.execute();
	
		return "success";
	}
	
	public String confm(int status, int action, int user, int user1) throws SQLException
	{
		PreparedStatement pt;
		pt= super.conn.prepareStatement("UPDATE tbl_relation SET status = ?, action_user_id = ? WHERE user_id_one = ? AND user_id_two = ?");
		pt.setInt(1,status);
		pt.setInt(2,action);
		pt.setInt(3,user);
		pt.setInt(4,user1);
		boolean x=pt.execute();
	
		return "success";
	}
	public String delete(int status, int  action, int user, int user1 ) throws SQLException
	{
		PreparedStatement pt;
		pt= super.conn.prepareStatement("delete from tbl_relation where status=? and action_user_id=? and user_id_one=? and user_id_two=?");
		pt.setInt(1,status);
		pt.setInt(2,action);
		pt.setInt(3,user);
		pt.setInt(4,user1);
		boolean x=pt.execute();
	
		return "success";
	}
	public String unfrnd(int status, int  action, int user, int user1 ) throws SQLException
	{
		PreparedStatement pt;
		pt= super.conn.prepareStatement("UPDATE tbl_relation SET status = ?, action_user_id = ? WHERE user_id_one = ? AND user_id_two = ?");
		pt.setInt(1,status);
		pt.setInt(2,action);
		pt.setInt(3,user);
		pt.setInt(4,user1);
		boolean x=pt.execute();
	
		return "success";
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DB_Search srch=new DB_Search();
		

	}

}
