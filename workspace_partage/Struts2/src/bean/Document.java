/**
 * 
 */
package bean;

/**
 * @author Mathieu
 *
 */
public class Document {
	
	public long AttachmentID ;
    public String FileName ;
    public String Path ;
    
    
    
	/**
	 * @param attachmentID
	 * @param fileName
	 * @param path
	 */
	public Document(long attachmentID, String fileName, String path) {
		AttachmentID = attachmentID;
		FileName = fileName;
		Path = path;
	}
	/**
	 * @return le attachmentID
	 */
	public long getAttachmentID() {
		return AttachmentID;
	}
	/**
	 * @param attachmentID le attachmentID a modifier
	 */
	public void setAttachmentID(long attachmentID) {
		AttachmentID = attachmentID;
	}
	/**
	 * @return le fileName
	 */
	public String getFileName() {
		return FileName;
	}
	/**
	 * @param fileName le fileName a modifier
	 */
	public void setFileName(String fileName) {
		FileName = fileName;
	}
	/**
	 * @return le path
	 */
	public String getPath() {
		return Path;
	}
	/**
	 * @param path le path a modifier
	 */
	public void setPath(String path) {
		Path = path;
	}
    
    
    
    
}
