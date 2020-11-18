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
import model.Option;

/**
 *
 * @author Siddhant Mishra
 */
public class Select extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session=request.getSession(true);
        String u=(String)session.getAttribute("name");
        String v=(String)session.getAttribute("email");
        String r=(String)session.getAttribute("password");
        String s=(String)session.getAttribute("area");
        String t=(String)session.getAttribute("mobile");
       Option o=new Option();
       String str=o.option();
        
            session.setAttribute("str", str);
            response.sendRedirect("service.jsp?u=<%=name%>&v=<%=email%>&r=<%=password%>&s=<%=area%>&t=<%=mobile%>");
       
       
          
    }

  
}
