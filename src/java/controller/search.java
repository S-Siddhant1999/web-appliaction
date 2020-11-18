/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import db.DBConnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author raju
 */
public class search extends HttpServlet {

 @Override
 public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
       
        String service=request.getParameter("service");
        String city=request.getParameter("city");
        try
        {
            response.setContentType("text/html");
            Statement st=DBConnector.getStatement();
            
            String query="select * from registartion where services='"+service+"' AND city='"+city+"'";
            
            ResultSet rs=st.executeQuery(query);
             PrintWriter out=response.getWriter();
             if(rs!=null)
             {
                 out.println("<html>");
                 out.println("<head>");
                 out.println("<style>");
                 out.println("table,tr,td {");
                 out.println("background-color:#f1f1c1");
                 out.println("}");
                 out.println("</style>");
                
      
      
            
            
             
             while(rs.next())
            {
                do{
                 out.println("<body><table position=absolute width='60%' border='1'><tr><td>f_name</td><td>l_name</td><td>services</td><td>city</td><td>pincode</td><td>email</td><td>password</td><td>mobile</td><td>experience</td></tr>");
                }
                while(false);
                 
                out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><tr>");
            }
            out.println("</table></body></html>");
             }
             else
             {
                  out.println("search not found");
             }
            
           
             
        }
            catch(SQLException e)
        {
            System.out.println(e);
        }
    
    }



    

}
