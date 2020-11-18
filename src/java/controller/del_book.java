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
public class del_book extends HttpServlet {

     @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
       String extra=request.getParameter("extra");
         System.out.println("extra val"+extra); 
      del u=new del();
       boolean st=u.isbookdel(extra);
       
       if(st)
       {
           
            out.print("<script>alert('Your Unbooking is Successful.')</script>");
                out.print("<script>window.location='booked.jsp'</script>");
               
       }
       else
       {
         out.print("<script>alert('Your Unbooking is Unsuccessful.')</script>");
                out.print("<script>window.location='booked.jsp'</script>");
       }
        //To change body of generated methods, choose Tools | Templates.
    }
}
