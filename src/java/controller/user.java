/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.RegistrationAuthenticator;

/**
 *
 * @author Siddhant Mishra
 */
public class user extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
         PrintWriter out=resp.getWriter();
         String name=req.getParameter("name");
        String email=req.getParameter("email");
        String password=req.getParameter("psw");
        String mobile=req.getParameter("mobile");
        String area=req.getParameter("area");
        
        
        
        RegistrationAuthenticator register=new RegistrationAuthenticator();
        boolean Registered=register.isUser(name, email,password,mobile,area);
       
       if(Registered)
       {
            HttpSession session=req.getSession(true);
            session.setAttribute("name", name);
           
            resp.sendRedirect("RegistrationUpdate.jsp");
        }
        else
        {
            out.println("hello");
        }
        
    }


}
