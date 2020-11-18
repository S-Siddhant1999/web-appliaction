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
import model.update;

/**
 *
 * @author Siddhant Mishra
 */
public class user_updated extends HttpServlet {

   @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        
        
      
        String mail=request.getParameter("email");
        String password=request.getParameter("password");
        String mobile=request.getParameter("mobile");
        String area=request.getParameter("area");
        
       
        
    
        
        
        System.out.println(password);
       
         update u=new update();
        boolean updateC=u.isUserUpdate(name,mail,password,mobile,area);
            if(updateC)
            {
                HttpSession session=request.getSession(true);
                session.setAttribute("email",mail);
                session.setAttribute("password",password);
                response.sendRedirect("user_profile.jsp");
            } else {
                System.out.println("error in userUpdate");
                
        }
            
    }
 
}
