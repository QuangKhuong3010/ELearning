/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
//czqn pyrq umwt srxu
public class Email {
    static final String from ="khuongdqhe176204@fpt.edu.vn";
    static final String password ="bafq wydh bvze faag";
    
    public void sendEmail(String to, String otp) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); 
        props.put("mail.smtp.post", "465");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.auth", "true");

        //creat Authenticator
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        ;
        };

        Session session = Session.getInstance(props, auth);

        MimeMessage msg = new MimeMessage(session);
        try {
            msg.addHeader("Content-type","text/html;charset = UTF-8");

            msg.setFrom(from);

            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));

            msg.setSubject("Mã OTP lấy lại mật khẩu","UTF-8");

            msg.setSentDate(new Date());

            msg.setContent("<html>"
                    + "<body>"
                    + "<h1>"
                    + "ELearning"
                    + "</h1>"
                    + "Mã OTP lấy lại mật khẩu của bạn là: "
                    + "<b>" + otp + "</b>"
                    + "<p>Mã otp này sẽ tồn tại trong 5m</p>"
                    + "</body>"
                    + "</html>",
                    "text/html;charset = UTF-8");

            Transport.send(msg);
            System.out.println("Send mail success");

        } catch (MessagingException e) {
            System.out.println("Error send email");
            System.out.println(e);
        }
    }
    
    public void sendPassword(String to, String pass) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); 
        props.put("mail.smtp.post", "465");
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.auth", "true");

        //creat Authenticator
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        ;
        };

        Session session = Session.getInstance(props, auth);

        MimeMessage msg = new MimeMessage(session);
        try {
            msg.addHeader("Content-type","text/html;charset = UTF-8");

            msg.setFrom(from);

            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));

            msg.setSubject("Đăng Ký Mentor Thành Công","UTF-8");

            msg.setSentDate(new Date());

            msg.setContent("<html>"
                    + "<body>"
                    + "<h1>"
                    + "SkillGo"
                    + "</h1>"
                    + "Mật Khẩu của bạn là: "
                    + "<b>" + pass + "</b>"
                    + "</body>"
                    + "</html>",
                    "text/html;charset = UTF-8");

            Transport.send(msg);
            System.out.println("Send mail success");

        } catch (MessagingException e) {
            System.out.println("Error send email");
            System.out.println(e);
        }
    }
}
