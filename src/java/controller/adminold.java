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
import model.AdminChecker;
import model.AdminVisit;

/**
 *
 * @author raju
 */
public class adminold extends HttpServlet {
 public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       PrintWriter out=response.getWriter();
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
        AdminVisit login=new AdminVisit();
        boolean log=login.isAdmin(email,password);
        
        if(log)
        {
            HttpSession session=request.getSession(true);
           session.setAttribute("email", email);
            session.setAttribute("password",password);
           
            response.sendRedirect("excessprovider.jsp");
        }
        else
        {
        out.println("login not successful!");
        }
    }

}
