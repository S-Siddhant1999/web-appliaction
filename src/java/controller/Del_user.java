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
public class Del_user extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out=response.getWriter();
        String mail=request.getParameter("u");
        System.out.println("mail"+mail);
        del d=new del();
        boolean y=d.isUserDelete(mail);
        if(y)
        {
            response.sendRedirect("users.jsp");
        }
        else
        {
             out.print("<script>alert('Record Not Deleted Successfully')</script>");
            out.print("<script>window.location='users.jsp'</script>");
            
        }
    
    }
}
