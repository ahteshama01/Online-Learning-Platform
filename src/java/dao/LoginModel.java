/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import jakarta.servlet.http.*;
import java.sql.*;
import java.io.*;
import static java.lang.System.out;
/**
 *
 * @author frikky
 */
public class LoginModel implements Model {
    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            String em=request.getParameter("email");
            String pass=request.getParameter("password");
            
            MyDao md=new MyDao(request);
            Statement st=md.getConnection();
            String query="SELECT  email,status,usertype_id FROM login_table WHERE(password='"+pass+"')";
            //fire above query & fetch email...
            ResultSet rs=md.loadData(st, query);
            if(rs.next()){
                String dbemail=rs.getString("email");
                int dbstatus=rs.getInt("status");
                int dbusertype=rs.getInt("usertype_id");
                if(dbemail.equals(em)){
                     if (dbstatus == 1) {
                         //System.out.println("Before session");
                         HttpSession sess=request.getSession(true);
                         sess.setAttribute("email",em);
                         sess.setAttribute("usertype_id", dbusertype);
                         //System.out.println("after session");
                        if (dbusertype== 1) {
                            // provider page
                             String page = "provider";
                            request.getRequestDispatcher("/WEB-INF/page/" + page + ".jsp").forward(request, response); 
                        } else {
                            // Seeker page
                            String page = "seeker";
                            request.getRequestDispatcher("/WEB-INF/page/" + page + ".jsp").forward(request, response); 
                        }
                    } else {
                        System.out.println("Verify your Email Address"); //verify your email
                    }
                } else {
                    System.out.println("Wrong Email/Password");//wrong credentials
                }
            } else {
                System.out.println("User doesnot Exit");//user does not exist
                }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }
}
