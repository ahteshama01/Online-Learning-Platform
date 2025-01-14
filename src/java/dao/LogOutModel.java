/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author frikky
 */
public class LogOutModel implements Model {

    public void requestProcessor(HttpServletRequest request, HttpServletResponse response) {
        try{
            HttpSession sess=request.getSession(false);
            if(sess!=null){
                sess.invalidate();
            }
            response.sendRedirect("http://localhost:8080/OLP/fc/?action=view&page=index");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
