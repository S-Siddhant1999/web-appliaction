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
import model.UpdateStatus;

/**
 *
 * @author raju
 */
public class approved extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String status=request.getParameter("status");
       String extra=request.getParameter("extra");
       
       UpdateStatus u=new UpdateStatus();
       boolean st=u.statusUpdate(status,extra);
       
       if(st)
       {
           System.out.println("updated successfully");
           response.sendRedirect("approval.jsp");
       }
       else
       {
           System.out.println("not updated");
       }
        //To change body of generated methods, choose Tools | Templates.
    }

   
}
