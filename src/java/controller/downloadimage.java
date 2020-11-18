package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import db.DBConnector;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author raju
 */
public class downloadimage extends HttpServlet {

    /**
     *
     * @param req
     * @param resp
     * @return
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void service(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
       
         String service=req.getParameter("service"); 
         String city=req.getParameter("city"); 
       
    
        try
        {
          Connection con=DBConnector.getConnection();
         String query="select image from registartion where services='"+service+"' AND city='"+city+"'";
       PreparedStatement ps=con.prepareStatement(query);
             ResultSet rs=ps.executeQuery();
       String imgLen="";
       while(rs.next())
       {
       
        Blob blob=rs.getBlob("image");
              byte[] byteArray=blob.getBytes(1,(int)blob.length());
        resp.setContentType("image/jpeg");
        OutputStream os=resp.getOutputStream();
        os.write(byteArray);
        os.flush();
        os.close();
        
          

        
       }
      
        }
        catch(Exception e)
        {
            
        }
    

    }
}

    

