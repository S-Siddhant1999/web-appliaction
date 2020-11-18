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
import model.del;

/**
 *
 * @author Siddhant Mishra
 */
public class delete_user extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mail=request.getParameter("email");
        
        del d=new del();
        boolean deleted=d.isUserDelete(mail);
        if(deleted)
        {
            response.sendRedirect("user.html");
        }
        else
        {
            System.out.print("record not deleted");
        }
    }
    
}
