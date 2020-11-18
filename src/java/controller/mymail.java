
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TestM;

/**
 *
 * @author raju
 */
public class mymail extends HttpServlet {

   
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String pemail=request.getParameter("email");
        HttpSession session=request.getSession(true);
        String upassword=(String)session.getAttribute("upassword");
        String uemail=(String)session.getAttribute("uemail");
        
        String usermobile=(String)session.getAttribute("usermobile");
        String username=(String)session.getAttribute("username");
        
        String pname=request.getParameter("name");
        String area=request.getParameter("area");        
        
        String pmobile=request.getParameter("mobile");
        System.out.println("mymail"+pemail+" "+uemail+" "+ upassword+" "+ pname+" "+ area+" "+ pmobile+" "+usermobile+" "+username);
       TestM m=new TestM();
        try {
          boolean val= m.isMail(pemail, uemail, upassword, pname, area, pmobile,usermobile,username);
            System.out.println("val is="+val);
            if(val==true)
            {
                
                session.setAttribute("password",upassword);
                session.setAttribute("email",uemail);
                session.setAttribute("area",area);
                session.setAttribute("mobile",usermobile);
                session.setAttribute("name",username);
                System.out.println("hye ji"+username+" "+upassword);
                out.print("<script>alert('Your booking is Successful.')</script>");
                out.print("<script>window.location='service.jsp'</script>");
               
            }
           
        } catch (MessagingException ex) {
            System.out.println(ex);
        }

   
    }

   
}
