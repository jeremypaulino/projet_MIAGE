/**
 * 
 */
package actions.general;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;



import java.util.Map;
import java.util.Properties;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;




/**
 * @author Mathieu
 *
 */
public class UploadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<File> file;
    private List<String> fileContentType;
    private List<String> fileFileName;
    
    public String execute() {
		
		Map attibutes = ActionContext.getContext().getSession();

		try {
			
			System.out.println("user dir = "+ System.getProperty("user.dir"));
			
			
			for(int i = 0; i<file.size();i++){
				
				
			//	File f = new File(System.getProperty("user.dir")+"\\uploadimg\\"+fileFileName.get(i));
				
				//System.out.println(f.getAbsolutePath());
				
				
				String mail = attibutes.get("message").toString();
				
				System.out.println("on va creer le dossier de " + mail);
				
				File files = new File(System.getProperty("user.dir")+"\\upload\\"+mail+"\\");
				
				if (files.mkdir()) {
					
					// le dossier n'existe pas 
					File f = new File(System.getProperty("user.dir")+"\\upload"+"\\"+mail+"\\"+fileFileName.get(i));
					this.copyFileUsingJava7Files(file.get(i),f);
					
				} 
				else {
					System.out.println("Failed to create multiple directories!");
					
					File f = new File(System.getProperty("user.dir")+"\\upload"+"\\"+mail+"\\"+fileFileName.get(i));
					this.copyFileUsingJava7Files(file.get(i),f);
				}				
			}
			
			
		} catch (Exception e) {
			System.err.println(e.getMessage());
		}
		
		
		return SUCCESS;
	}
    
    private static void copyFileUsingJava7Files(File source, File dest)
    		throws IOException {
    	
		System.out.println(dest.getAbsolutePath());

    	Files.copy(source.toPath(), dest.toPath());
    }
    
    /**
	 * @return le file
	 */
	public List<File> getFile() {
		return file;
	}
	/**
	 * @param file le file a modifier
	 */
	public void setFile(List<File> file) {
		this.file = file;
	}
	/**
	 * @return le fileContentType
	 */
	public List<String> getFileContentType() {
		return fileContentType;
	}
	/**
	 * @param fileContentType le fileContentType a modifier
	 */
	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}
	/**
	 * @return le fileFileName
	 */
	public List<String> getFileFileName() {
		return fileFileName;
	}
	/**
	 * @param fileFileName le fileFileName a modifier
	 */
	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}
    
    

}
