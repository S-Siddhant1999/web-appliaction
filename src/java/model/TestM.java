/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.Statement;
import javax.mail.MessagingException;

/**
 *
 * @author raju
 */
public class TestM {
     

/**
           *
           * @param email
           * @throws MessagingException
           */                   
public static boolean isMail(String pemail,String uemail,String upassword, String pname, String area, String pmobile,String umobile,String uname) throws MessagingException
{
    TestMail m=new TestMail();
    System.out.println(" TEst M"+" "+pemail+" "+uemail+" "+upassword+" "+pname+" "+area+" "+pmobile+" "+uname+" "+umobile);
  boolean val= m.sendMail(pemail, uemail, upassword,pname,area,pmobile,uname,umobile);
  if(val==true)
      return true;
   return false;
      
  
}
   
 
}