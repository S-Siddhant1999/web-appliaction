/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.Connection;

/**
 *
 * @author raju
 */
public class update {
    
    public boolean isUpdate(String name,String services,String area,String mail,String password,String mobile,String experience)
    {
       
        
        try{
            Connection con=DBConnector.getConnection();
            PreparedStatement pst = null;
            
            
            
            pst = con.prepareStatement(" update provider set name=?,service=?,password=?,mobile=?,experience=? where email=?");
              
            
            pst.setString(1, name);
          
            pst.setString(2, services);
           
            pst.setString(3, password);
            pst.setString(4, mobile);
            pst.setString(5, experience);
            pst.setString(6, mail);
           
           
            
            int i = pst.executeUpdate();
            
            
            if(i>0)
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
    
    public boolean isUserUpdate(String name,String mail,String password,String mobile,String area)
    {
       
        System.out.println("paasword is: "+password);
        try{
           Statement st = DBConnector.getStatement();
           
           String query="update user set name='"+name+"',area='"+area+"',password='"+password+"',number='"+mobile+"' where email='"+mail+"'";
            
            
            
          
           
            
            int rs = st.executeUpdate(query);
            
            
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
    

