/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neu.edu.servlet;

import com.neu.edu.DAO.CustomerDAO;
import com.neu.edu.pojo.Customer;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author Dev
 */
public class homeController implements Controller {

 
    CustomerDAO customerDAo;

    public homeController() {
       // this.productDAO = productDAO;
        this.customerDAo = new CustomerDAO();
        //this.orderDAO = orderDAO;
    }

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        HttpSession session = hsr.getSession();
        String action = hsr.getParameter("action");
        ModelAndView mv = new ModelAndView();
        
       if(action.equals("loginpage")){
            mv.setViewName("login");
        }
        
        else if(action.equals("login")){
            String uname = hsr.getParameter("username");
            String pass = hsr.getParameter("password");
            Customer c = customerDAo.verifyUser(uname, pass);
            
            if(c!=null){
                session.setAttribute("customerId", c.getCustomerID());
                session.setAttribute("customerName", c.getName());
                
                mv.setViewName("index");
            }
            else {
                mv.addObject("error","true");
                mv.setViewName("login");
            }
        }
        
        else if(action.equals("logout")){
            session.invalidate();
            mv.setViewName("index");
        }
        
        
        return mv;
    }

}
