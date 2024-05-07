/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.util.Properties;

/**
 *
 * @author frikky
 */
public class MailSender {
    public void sendMail(String email,String text){
      String from="replethcl01@gmail.com";
      final String username="replethcl01@gmail.com";
      final String password="hxewmfjswpqeihuz";
      Properties props=new Properties();
      props.put("mail.smtp.auth","true");
      props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
      props.put("mail.smtp.starttls.enable","true");
      props.put("mail.smtp.host","smtp.gmail.com");
      props.put("mail.smtp.port","587");
      Session sess = Session.getInstance(props,new jakarta.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(username,password);
            }});
      try{
          Message msg=new MimeMessage(sess);
          msg.setFrom(new InternetAddress(from));
          msg.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
          msg.setText(text);
          Transport.send(msg);
      }catch(MessagingException e){
          e.printStackTrace();
      }
    }
}
