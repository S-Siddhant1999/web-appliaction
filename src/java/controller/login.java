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
import model.loginChecker;

/**
 *
 * @author raju
 */
public class login extends HttpServlet {
    
     @Override
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       PrintWriter out=response.getWriter();
        String email=request.getParameter("email");
        String password=request.getParameter("psw");
        
        loginChecker login=new loginChecker();
        boolean log=login.isLogin(email,password);
         System.out.println("val is = "+log);
        if(log)
        {
            HttpSession session=request.getSession(true);
            session.setAttribute("email", email);
            session.setAttribute("password",password);
           
            response.sendRedirect("profile.jsp");
        }
        else
        {
            
             out.print("<script>alert('Invalid username or password.')</script>");
                out.print("<script>window.location='login.jsp'</script>");
               
        }
    }

   


}
