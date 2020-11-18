/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.Statement;

/**
 *
 * @author raju
 */
public class RegistrationAuthenticator {
    
     public boolean isRegister(String name,String email,String services,String area,String password,String number,String exp)
    {
       try
            
        {
        Statement st=DBConnector.getStatement();
        String query="Insert into provider values('"+name+"','"+services+"','"+area+"','"+email+"','"+password+"','"+number+"','"+exp+"','"+null+"')";
         
            int rs=st.executeUpdate(query);
        
            if(rs>0)
            {
                return true;
            }
       
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
     
       
            return false;
      
    
    }    
     public boolean isUser(String name,String email,String password,String mobile,String area )
     {
         try
            
        {
        Statement st=DBConnector.getStatement();
        String query="Insert into user values('"+name+"','"+email+"','"+password+"','"+area+"','"+mobile+"')";
         
            int rs=st.executeUpdate(query);
        
            if(rs>0)
            {
                return true;
            }
       
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
     
       
            return false;
     
     
     }
//To change body of generated methods, choose Tools | Templates.
    }
    
    
    

