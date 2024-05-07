/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.servlet.http.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

/**
 *
 * @author frikky
 */
public class SignUpModel implements Model {

    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try {
            System.out.println("LoginModel");
            PrintWriter out = response.getWriter();
            String s1 = request.getParameter("fname");
            String s2 = request.getParameter("lname");
            String s3 = request.getParameter("email");
            String s4 = request.getParameter("password");
            String s5 = request.getParameter("dob");
            String s6 = request.getParameter("gender");
            String s7 = request.getParameter("qualification");
            String s8 = request.getParameter("user");
            int user = Integer.parseInt(s8);
            String s9 = request.getParameter("countries");
            //int city = Integer.parseInt(s9);
            System.out.println("fname is: " + s1);
            System.out.println("lname is: " + s2);
            System.out.println("email is: " + s3);
            System.out.println("password is: " + s4);
            System.out.println("DOB is: " + s5);
            System.out.println("Gender is: " + s6);
            System.out.println("qualification is: " + s7);
            System.out.println("Type is: " + user);
            System.out.println("countries is: " +s9);
            
            //connection with database
            MyDao md = new MyDao(request);
            Statement st = md.getConnection();
            
            //database queries 
            int gender = 0;
            if (s6.equals("Male")) {
                gender = 1;
            } else if (s6.equals("Female")) {
                gender = 2;
            }
            String q2 = "INSERT INTO login_table(email,password,status,usertype_id)VALUES('" + s3 + "','" + s4 + "',0,'" + user + "')";
            md.insertData(st, q2);
            String q3 = "SELECT u_id FROM user_table ORDER BY u_id DESC LIMIT 1";
            ResultSet rs = (ResultSet) md.loadData(st, q3);
            if (!rs.next()) {
                String q1 = "INSERT INTO user_table(u_id,fname,lname,dob,gender,hqualification,email)VALUE(1,'" + s1 + "','" + s2 + "','" + s5 + "','" + gender + "','" + s7 + "','" + s3 + "')";
                md.insertData(st, q1);
            } else {
                int id = rs.getInt("u_id") + 1;
                String q4 = "INSERT INTO user_table(u_id,fname,lname,dob,gender,hqualification,email)VALUE('" + id + "','" + s1 + "','" + s2 + "','" + s5 + "','" + gender + "','" + s7 + "','" + s3 + "')";
                md.insertData(st, q4);
            }
            String link = "http://localhost:8080/OLP/fc/?action=model&page=VerifyEmailModel&email=" + s3;
            MailSender ms = new MailSender();
            ms.sendMail(s3, link);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
