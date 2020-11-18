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
 * @author raju
 */
public class regis extends HttpServlet {
    
     @Override
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
       PrintWriter out=response.getWriter();
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String services=request.getParameter("service");
        String area=request.getParameter("area");
        String password=request.getParameter("psw");
        String number=request.getParameter("mobile");
        String exp=request.getParameter("experience");
        
       
        
        RegistrationAuthenticator register=new RegistrationAuthenticator();
        boolean Registered=register.isRegister(name, email,services,area,password,number,exp);
       
       if(Registered)
       {
            HttpSession session=request.getSession(true);
            session.setAttribute("name", name);
             out.print("<script>alert('Your Registartion is Successful,wait for admin to approve your details.')</script>");
                out.print("<script>window.location='login.html'</script>");
               
           
           
        }
        else
        {
            out.println("hello");
        }
       

    }


}
