/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Siddhant Mishra
 */
public class Option {
    
    
  public String option()
   {
       String tablepassword="";
        try
        {
            Statement st=DBConnector.getStatement();
            String query="Select distinct(area) from provider";
            ResultSet rs=st.executeQuery(query);
            
            while(rs.next())
            {
                tablepassword=tablepassword+"<option>"+rs.getString(1)+"</option>";
                
                
        }
            
          
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        System.out.println(tablepassword);
   return tablepassword;
   }
  
}
