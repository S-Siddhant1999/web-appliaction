/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Properties;
import javax.mail.Authenticator;
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
public class B {

     public static void sendMail(String recepient) throws MessagingException
        {
            System.out.println("Preparing to send");
            Properties properties = new Properties();
            
            properties.put("mail.smtp.auth","true");
            
            properties.put("mail.smtp.starttls.enable","true");
            properties.put("mail.smtp.host","smtp.gmail.com");
            properties.put("mail.smtp.port","587");
            
            String myAccountEmail="projectuser93@gmail.com"; 
            String password="user@123";
            
            Session session = Session.getInstance(properties, new Authenticator()
            {
                @Override
                protected PasswordAuthentication getPasswordAuthentication()
                {
                    return new PasswordAuthentication(myAccountEmail,password); //To change body of generated methods, choose Tools | Templates.
                }
                                
            });
            
            Message message=prepareMessage(session,myAccountEmail,recepient);
            Transport.send(message);
            System.out.println("Message sent successfully");
        }
        

        private static Message prepareMessage(Session session, String myAccountEmail, String recepient) throws MessagingException 
        {
            
            Message message=new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(Message.RecipientType.TO,new InternetAddress(recepient));
            message.setSubject("My First Email from Java App");
            message.setText("Hey there.\n Look my Email");
            return message; //To change body of generated methods, choose Tools | Templates.
        }
        
    }

