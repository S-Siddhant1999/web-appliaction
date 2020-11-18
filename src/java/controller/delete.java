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
import model.del;

/**
 *
 * @author raju
 */
public class delete extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       PrintWriter out=response.getWriter();       
       String mail=request.getParameter("email");
         String password=request.getParameter("psw");
         System.out.println(mail+" "+password);
        del d=new del();
        boolean deleted=d.isDelete(mail);
        if(deleted)
        {
             out.print("<script>alert('Your account is successful delete.')</script>");
                out.print("<script>window.location='home.html'</script>");
               
        }
        else
        {
            HttpSession session=request.getSession(true);
            session.setAttribute("password",password);
            session.setAttribute("email",mail);
             out.print("<script>alert('Your account is not delete.\nTry Again')</script>");
                out.print("<script>window.location='profile.jsp'</script>");
            
        }
    }
    


}
