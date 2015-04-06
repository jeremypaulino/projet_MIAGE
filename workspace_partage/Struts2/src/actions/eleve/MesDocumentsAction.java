/**
 * 
 */
package actions.eleve;

import java.util.LinkedList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import bean.Document;

import org.json.simple.JSONObject;

/**
 * @author Mathieu
 *
 */
public class MesDocumentsAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private List<Document> listedoc;

	private List jsondoc = new LinkedList();

	public String execute() {
		try {

			Document doc = new Document(1,
					"Greece",
					"D:\\eclipseJ2EE\\eclipse\\upload\\9small.jpg");
			
			JSONObject obj = new JSONObject();

			obj.put("AttachmentID", doc.getAttachmentID());

			obj.put("FileName", doc.getFileName());

			obj.put("Path", doc.getPath());

			jsondoc.add(obj);

//			for (int i = 0; i < listedoc.size(); i++) {
//
//				JSONObject obj = new JSONObject();
//
//				obj.put("AttachmentID", doc.getAttachmentID());
//
//				obj.put("FileName", doc.getFileName());
//
//				obj.put("Path", doc.getPath());
//
//				jsondoc.add(obj);
//			}

		} catch (Exception e) {

			System.err.println(e.getMessage());

		}

		return SUCCESS;
	}

	/**
	 * @return le listedoc
	 */
	public List<Document> getListedoc() {
		return listedoc;
	}

	/**
	 * @return le jsondoc
	 */
	public List getJsondoc() {
		return jsondoc;
	}

}
