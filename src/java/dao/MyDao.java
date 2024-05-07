/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import java.sql.*;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

/**
 *
 * @author frikky
 */
public class MyDao implements Serializable{
    ServletContext ctx=null;
    public MyDao(HttpServletRequest req){
        ctx=req.getServletContext();
    }
    public Statement getConnection()throws ClassNotFoundException,SQLException{
        Class.forName(ctx.getInitParameter("driver"));
        return DriverManager.getConnection(ctx.getInitParameter("url"),ctx.getInitParameter("user"),ctx.getInitParameter("password")).createStatement();
    }
    public boolean insertData(Statement st,String query) throws SQLException{
        return st.execute(query);
    }
    public ResultSet loadData(Statement st,String query) throws SQLException{
        return st.executeQuery(query);
    }
}
