/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnector;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author raju
 */
public class del {
       public boolean isDelete(String mail) {
        try {
            System.out.println("mail id isdelete"+mail);
            Statement st = DBConnector.getStatement();
            String query = "DELETE FROM provider WHERE email='" + mail + "'";

            int rs = st.executeUpdate(query);

            if (rs > 0) {
                return true;
            } else {
                return false;
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return false;
    }
         
       public boolean isUserDelete(String mail) {
        try {
            Statement st = DBConnector.getStatement();
            String query = "DELETE FROM user WHERE email='" + mail + "'";

            int rs = st.executeUpdate(query);

            if (rs > 0) {
                return true;
            } else {
                return false;
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return false;
    }
       public boolean isbookdel(String mail) {
        try {
            Statement st = DBConnector.getStatement();
            String query = "DELETE FROM book WHERE provideremail='" + mail + "'";

            int rs = st.executeUpdate(query);

            if (rs > 0) {
                return true;
            } else {
                return false;
            }

        } catch (Exception e) {
            System.out.println(e);
        }

        return false;
    }


    
    }
 
