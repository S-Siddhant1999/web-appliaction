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
 * @author Siddhant Mishra
 */
public class user_login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
               String email=request.getParameter("email");
        String password=request.getParameter("psw");
        
        loginChecker login=new loginChecker();
        boolean log=login.isUserLogin(email,password);
        System.out.println(log);
        
        if(log)
        {
            HttpSession session=request.getSession(true);
           session.setAttribute("email", email);
            session.setAttribute("password",password);
           
            response.sendRedirect("userhome.jsp");
        }
        else
        {
            out.print("<script>alert('You have entered wrong email or password Login fail.')</script>");
            out.print("<script>window.location='login_user.html'</script>");
            
        }
    }

   
    }

   
