package bean;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.opensymphony.xwork2.ActionSupport;

public class Emailer extends ActionSupport {

   private String from;
   private String password;
   private String destinataireMail;//to
   private String sujet;
   private String texte;//body
   


   static Properties properties = new Properties();
   static
   {
      properties.put("mail.smtp.host", "smtp.gmail.com");
      properties.put("mail.smtp.socketFactory.port", "465");
      properties.put("mail.smtp.socketFactory.class",
                     "javax.net.ssl.SSLSocketFactory");
      properties.put("mail.smtp.auth", "true");
      properties.put("mail.smtp.port", "465");
   }
   
   public Emailer(){}
   
	/**
	 * @param destinataireMail le mail du destinataire
	 * @param sujet le sujet du mail
	 * @param texte le texte du mail
	 */
   public Emailer(String f, String psw, String email, String sujet2,
		String texte2) {
	// TODO Auto-generated constructor stub
	   from=f;
	   password=psw;
	   destinataireMail=email;
	   sujet=sujet2;
	   texte=texte2;
}

	public void envoyer(){
		
		Session session = Session.getDefaultInstance(properties,  
	            new javax.mail.Authenticator() {
	            protected PasswordAuthentication 
	            getPasswordAuthentication() {
	            return new 
	            PasswordAuthentication(from, password);
	            }});
		try{
	         Message message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(from));
	         message.setRecipients(Message.RecipientType.TO, 
	            InternetAddress.parse(destinataireMail));
	         message.setSubject(sujet);
	         message.setText(texte);
	         Transport.send(message);
		}catch(Exception e){ 
			e.printStackTrace();
		};
	}

   public String getFrom() {
      return from;
   }

   public void setFrom(String from) {
      this.from = from;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public String getTo() {
      return destinataireMail;
   }

   public void setTo(String to) {
      this.destinataireMail = to;
   }

   public String getSubject() {
      return sujet;
   }

   public void setSubject(String subject) {
      this.sujet = subject;
   }

   public String getBody() {
      return texte;
   }

   public void setBody(String body) {
      this.texte = body;
   }

   public static Properties getProperties() {
      return properties;
   }

   public static void setProperties(Properties properties) {
      Emailer.properties = properties;
   }
}
