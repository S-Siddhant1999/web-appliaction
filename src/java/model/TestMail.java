/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import db.DBConnector;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.mail.Authenticator;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author Siddhant Mishra
 */

public class TestMail                    
{
      public static boolean sendMail(String recepient,String uemail,String Upassword, String pname, String area, String pmobile,String uname,String umobile) throws MessagingException
        {
            System.out.println("Preparing to send");
            Properties properties = new Properties();
            
            properties.put("mail.smtp.auth","true");
            
            properties.put("mail.smtp.starttls.enable","true");
            properties.put("mail.smtp.host","smtp.gmail.com");
            properties.put("mail.smtp.port","587");
            
            String myAccountEmail=uemail; 
            String password=Upassword;
            System.out.println("check : "+myAccountEmail+" "+password);
            
            Session session = Session.getInstance(properties, new Authenticator()
            {
                @Override
                protected PasswordAuthentication getPasswordAuthentication()
                {
                    return new PasswordAuthentication(myAccountEmail,password); //To change body of generated methods, choose Tools | Templates.
                }
                                
            });
            
            Message message=prepareMessage(session,myAccountEmail,recepient,uname,pname);
            System.out.println(message);
            Transport.send(message);
            System.out.println("Message sent successfully");
            System.out.println(message);
            if(message!=null)
            {
                try
                {   System.out.println("query box");
                    Statement st=DBConnector.getStatement();
                    System.out.println("");
                    String query="Insert into book values('"+myAccountEmail+"','"+recepient+"','"+uname+"','"+area+"','"+umobile+"','"+pname+"','"+pmobile+"')";
                    System.out.println(query);
                    int rs=st.executeUpdate(query);
                    System.out.println(query+" "+rs);
                    if(rs>0)
                    {
                           System.out.println("values inserted ");
                           return true;
                    }
                    else
                        return false;
                    
                }
                catch(Exception e)
                {
                    System.out.println("hello ji");
                    
                }
            }
            return false;
        }
        

        private static Message prepareMessage(Session session, String myAccountEmail, String recepient,String uname,String pname) throws MessagingException 
        {
            System.out.println("prpere message "+session+" "+myAccountEmail+" "+recepient+" "+uname+" "+pname);
            Message message=new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(Message.RecipientType.TO,new InternetAddress(recepient));
            message.setSubject("Booking Update");
            message.setText("Hey "+pname+"!\n You are booked by "+uname+" check further deatils on your profile \nClick Here to Login:http://localhost:8084/my_minor_project/login.html\n    Thank You \n Team Quick Response");
            return message; //To change body of generated methods, choose Tools | Templates.
        }
        
        
    }
   









