package bloodbank;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

public class SendSms {

	public static void sendSms(String mob,String msg)
	{
	try
	{
		String mb="91"+mob;
		URL u=new URL("http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=lncinfotech&password=01204561667&sendername=LNCSMS&mobileno="+mb+"&message="+msg);
		HttpURLConnection con=(HttpURLConnection) u.openConnection();
		con.connect();
		InputStream in=con.getInputStream();
		while(true)
		{
		int i=in.read();
		if(i==-1)
		break;
		System.out.print((char)i);
		}
		con.disconnect();
		in.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		}
		
	}
	
