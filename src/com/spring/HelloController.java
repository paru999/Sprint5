package com.spring;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.portlet.ModelAndView;

import com.Beans.UserBean;
import com.Beans.loginBean;
import com.DBconnection.*;



@Controller
public class HelloController
{
	private String saveDirectory="E:/test/upload";
	
	
	
	@RequestMapping(value="/", method= RequestMethod.GET)
	public String init(Model model)
	{
				return "facebook";
	}


	
	
// Registration
	@RequestMapping(value="/Registration", method= RequestMethod.POST)
	public String facebook(@Validated @ModelAttribute("userBean") UserBean userBean	,BindingResult result,ModelMap model, @RequestParam CommonsMultipartFile file, HttpSession session)throws SQLException
	{
		{
		      
			String fname =userBean.getFirstnane();
		    DB_insert1 obj =new DB_insert1();
		    String dob= userBean.getYr()+"/"+userBean.getMn()+"/"+userBean.getDy();
		    String filename=file.getOriginalFilename();
			System.out.println(saveDirectory+"/"+filename);
		 
		     /*  if( userBean!= null && userBean.getFirstnane()!=null && userBean.getLastname()!=null  && userBean.getPhno()!= 0 && userBean.getMail()!=null&& userBean.getPass()!=null )
		       {*/
		    	String y=obj.insert(userBean.getFirstnane(), userBean.getLastname(),userBean.getPhno(),userBean.getMail(),userBean.getPass(),filename, dob, userBean.getFem());
		
		    	/*System.out.println("Y="+y);
				if(y==true)*/
		
		    	  System.out.println("Y="+y);	   
		        if(y.equals("success"))
		        	
		       
		       {
		    	  
					try{
						byte barr[]=file.getBytes();
						BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(saveDirectory+"/"+filename));
						bout.write(barr);
						bout.flush();
						bout.close();
					} catch(Exception e ){System.out.println(e);}
					//return new ModelAndView("upload-success","filename",saveDirectory+"/"+filename);
					model.addAttribute("name",userBean.getFirstnane());
					model.addAttribute("name2",userBean.getLastname());
					model.addAttribute("img",saveDirectory+"/"+filename);
					
					
					
					return ("homepage");  
		       }
		        else
		        {
		        	return ("hello"); 
		        }
						         
		}
		
	}
}

