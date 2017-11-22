package bloodbank;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;

public class SendMail {

	public static void sendMail(String to,String subject,String msg)
	{
	String host = "smtp.gmail.com";
	String userid = "adityajavaassign@gmail.com"; 
	String password = "lnc@java"; 
	String from="adityajavaassign@gmail.com";
	try
	{
	Properties p=new Properties();
	Session sess=Session.getInstance(p); 
	MimeMessage message =new MimeMessage(sess); 
	InternetAddress fromAddress = null;
	InternetAddress toAddress = null;
	fromAddress = new InternetAddress(from);
	toAddress = new InternetAddress(to);
	message.setFrom(fromAddress);
	message.setRecipient(Message.RecipientType.TO, toAddress);
	message.setSubject(subject);
	message.setText(msg); 
	System.out.println("0");
	Transport transport = sess.getTransport("smtps"); 
	System.out.println(transport);
	transport.connect(host, userid, password); 
	System.out.println("0.1");
	System.out.println("1");
	transport.sendMessage(message,message.getAllRecipients()); 
	System.out.println("2");
	transport.close(); 
	}
	catch (MessagingException e)
	{
	e.printStackTrace();
	}
	}

	
}
