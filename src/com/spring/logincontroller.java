package com.spring;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.portlet.ModelAndView;

import com.Beans.*;
import com.DBconnection.DB_insert1;

@Controller
public class logincontroller
{
	@RequestMapping(value="/login" ,method = RequestMethod.POST)
	public String submit(HttpServletRequest request, HttpServletResponse response,Model model, @ModelAttribute("loginBean") loginBean loginBean) throws SQLException
{
	
	 DB_insert1 obj =new DB_insert1();
	 
	 ResultSet x=obj.store(loginBean.getMail(), loginBean.getPwd());
	 ResultSet y=obj.emailerror(loginBean.getMail());
	  if(x.next())
	  {
		 
		 model.addAttribute("pwd", loginBean.getPwd());
		  System.out.println("x="+x);
		  
		 /* model.addAttribute("name", x.getString("vchr_firstname"));
		  model.addAttribute("name2", x.getString("vchr_lastname"));
		 model.addAttribute("img",x.getString("vchr_image"));
			*/
		 //System.out.println( x.getString("vchr_email"));
		 HttpSession session = request.getSession();
		 session.setAttribute("userid", x.getInt("pk_int_UID"));
		 session.setAttribute("UserName", x.getString("vchr_firstname"));
		 session.setAttribute("LastName", x.getString("vchr_lastname"));
		
		 return "homepage";
		  
		}
	
	else if(y.next())
	  {
		  /*model.addAttribute("name", y.getString("vchr_firstname"));
		  model.addAttribute("name2", y.getString("vchr_lastname"));
		 model.addAttribute("email",y.getString("vchr_email"));
		 model.addAttribute("img",y.getString("vchr_image"));*/
		 HttpSession session = request.getSession();
		 session.setAttribute("UserName", y.getString("vchr_firstname"));
		 session.setAttribute("LastName", y.getString("vchr_lastname"));
		 session.setAttribute("email",y.getString("vchr_email"));
		 session.setAttribute("img",y.getString("vchr_image"));
		return "puerror";

	  }
	  else 
	{
	model.addAttribute("error", "Invalid Details");
	
	return "username";
	}
	}
	
	
	
	
	/*@Autowired
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView displayLogin(HttpServletRequest request, HttpServletResponse response)
	{
		ModelAndView model = new ModelAndView("login");
		loginBean loginBean = new loginBean();
		model.addObject("loginBean", loginBean);
		return model;
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String executeLogin(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("loginBean")loginBean loginBean,Model model)
	{
		//ModelAndView model= null;
		try
		{
			DB_insert1 obj =new DB_insert1();
			 ResultSet x=obj.store(loginBean.getMail(), loginBean.getPwd());
			 ResultSet y=obj.emailerror(loginBean.getMail());
			  if(x.next())
			{
				System.out.println("User Login Successful");
				request.setAttribute("name", loginBean.getMail());
				System.out.println("x="+x);
				//model = new ModelAndView("homepage");
				return "homepage";
			}
			else
			{
				return "puerror";
				//model = new ModelAndView("homepage");
               model.addAttribute("loginBean", loginBean);
				request.setAttribute("message", "Invalid credentials!!");
			}

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		return "username";
	}
*/

}
	
	


	

	

	

	
	




	

