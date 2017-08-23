package com.spring;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;






import com.Beans.newsfeed_Beans;
import com.DBconnection.DB_newsfeed;

@Controller
public class newsfeedController
{
	@RequestMapping(value="/newsfeed" ,method = RequestMethod.POST)
	public String insertstatus(HttpSession session,HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute("newsfeed_Beans") newsfeed_Beans newsfeed_Beans) throws SQLException
	{
		DB_newsfeed news=new DB_newsfeed();
		 int userid= (int) session.getAttribute("userid");
		news.newsfeed(newsfeed_Beans.getTxtbox(),userid );
		System.out.println("name"+ newsfeed_Beans.getTxtbox());
		model.addAttribute("status", newsfeed_Beans.getTxtbox());
		return "homepage";
		
	}
	
}
