/**
 * 
 */
package bean;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;




/**
 * @author Mathieu
 *
 */
public class Email {

	/**
	 * Cette classe sert à envoyer des mails
	 * @param email 
	 * @param sujet
	 * @param texte
	 */
	
	private String destinataireMail;
	private String sujet;
	private String texte;
	private String newLigne = System.getProperty("line.separator");
	private String footer = "Cordialement,"+ newLigne + "L'équipe Ischool.";
	
	/**
	 * @param destinataireMail le mail du destinataire
	 * @param sujet le sujet du mail
	 * @param texte le texte du mail
	 */
	public Email(String destinataireMail, String sujet, String texte) {
		

		this.destinataireMail = destinataireMail;
		this.sujet = sujet;
		this.texte = texte;
		
		envoyer(this);
	}
	
	/**
	 * @param email
	 */
	private void envoyer(Email email) {
	      // Recipient's email ID needs to be mentioned.
	      String to = email.destinataireMail;

	      // Sender's email ID needs to be mentioned
	      String from = "ischool@gmail.com";

	      // Assuming you are sending email from localhost
	      String host = "localhost";

	      // Get system properties
	      Properties properties = System.getProperties();

	      // Setup mail server
	      properties.setProperty("mail.smtp.host", host);

	      // Get the default Session object.
	      Session session = Session.getDefaultInstance(properties);

	      try{
	         // Create a default MimeMessage object.
	         MimeMessage message = new MimeMessage(session);

	         // Set From: header field of the header.
	         message.setFrom(new InternetAddress(from));

	         // Set To: header field of the header.
	         message.addRecipient(Message.RecipientType.TO,
	                                  new InternetAddress(to));

	         // Set Subject: header field
	         message.setSubject(email.sujet);

	         // Now set the actual message
	         message.setText(email.texte+" "+newLigne+" "+footer);

	         // Send message
	         Transport.send(message);
	         System.out.println("Email bien envoye");
	      }catch (MessagingException mex) {
	         mex.printStackTrace();
	      }
		
	}



}
