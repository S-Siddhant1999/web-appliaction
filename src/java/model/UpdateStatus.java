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
 * @author raju
 */
public class UpdateStatus {
    public boolean statusUpdate(String status,String extra)
    {
    try
        {
            Statement st=DBConnector.getStatement();
            
            String query="update provider set status='"+status+"' where email='"+extra+"'";
            
            int rs=st.executeUpdate(query);
            
            if(rs>0)
            {
               return true;
            }
            else
            {
                return false;
            }
        }
    catch(Exception e)
    {
        System.out.println(e);
    }
     
    
    
    return false;
    
    
    
    
}
}
