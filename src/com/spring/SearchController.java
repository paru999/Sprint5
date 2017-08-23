package com.spring;


import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;








import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Beans.Contactform;
import com.Beans.FrndBean;
import com.Beans.SearchBean;
import com.Beans.UserBean;
import com.Beans.loginBean;
import com.DBconnection.DB_Search;

@Controller
public class SearchController extends HttpServlet
{

        private static final long serialVersionUID = 1L;
        @RequestMapping(value="/search" ,method = RequestMethod.GET)
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

                response.setContentType("application/json");
                try {
                        String term = request.getParameter("Searchbox");
                        System.out.println("Data from ajax call " + term);

                        DB_Search dataDao = new  DB_Search();
                        ArrayList<String> list = dataDao.getFrameWork(term);

                        String searchList = new Gson().toJson(list);
                        response.getWriter().write(searchList);
                        System.out.println(" Search:"+searchList);
                       
                } catch (Exception e) {
                        System.err.println(e.getMessage());
                }
                
        }
        @RequestMapping(value="/addrequest" ,method = RequestMethod.GET)
        public String addrqust()
        {
			return "addrequest";
        	
        }
        @RequestMapping(value="/confirmrequest" ,method = RequestMethod.GET)
        public String cnfmrqust()
        {
			return "confirmrequest";
        	
        }
        @RequestMapping(value="/unfrnd" ,method = RequestMethod.GET)
        public String unfrntrqust()
        {
			return "unfrnd";
        	
        }
        @RequestMapping(value = "/add", method = RequestMethod.GET)
        public String addfriend(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
        	
        	System.out.println("id"+id);
         int userid= (int) session.getAttribute("userid");
        System.out.println("int id"+userid);
        DB_Search objsrch = new DB_Search();
        objsrch.frient( userid, id, 0, userid);
        return "addrequest";
        }
        @RequestMapping(value = "/confm", method = RequestMethod.GET)
        public String confmfriend(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
        	
        	System.out.println("id"+id);
        	 int userid= (int) session.getAttribute("userid");
        System.out.println("int id"+userid);
        DB_Search objsrch = new DB_Search();
        objsrch.confm(1,id, userid,id);
        return "confirmrequest";
        }
        @RequestMapping(value = "/delete", method = RequestMethod.GET)
        public String delete(@RequestParam("id") Integer id, HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
        	
        	System.out.println("id"+id);
        	 int userid= (int) session.getAttribute("userid");
        System.out.println("int id"+userid);
        DB_Search objsrch = new DB_Search();
        objsrch.delete( 0, id,id, userid);
        return "confirmrequest";
        }
       @RequestMapping(value = "/unfriend", method = RequestMethod.GET)
        public String unfriend(@RequestParam("id") Integer id,HttpSession session,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("FrndBean") FrndBean frndbean) throws SQLException

        {
    	   System.out.println("id"+id);
        int userid= (int) session.getAttribute("userid");
        System.out.println("int id"+userid);
        DB_Search objsrch = new DB_Search();
        objsrch.unfrnd( 0, id, userid, id);
        return "unfrnd";
        }
        
}

      

