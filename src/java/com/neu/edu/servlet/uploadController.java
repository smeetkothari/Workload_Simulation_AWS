/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.neu.edu.servlet;



import com.neu.edu.DAO.FileUploadDAO;
import com.neu.edu.pojo.UserUpload;
import java.io.File;
import org.springframework.web.servlet.mvc.SimpleFormController;

/**
 *
 * @author Dev
 */
public class uploadController extends SimpleFormController {

    private FileUploadDAO fileDAO;

    public uploadController() {
        setCommandClass(UserUpload.class);
        setCommandName("userUpload");
        setFormView("upload");
        setSuccessView("upload");
        this.fileDAO = new FileUploadDAO();
    }

    
    @Override
    protected void doSubmitAction(Object command) throws Exception {
     
       UserUpload userUpload = (UserUpload) command;
       System.out.println(userUpload.getId());
       File file;
       String check = File.separator; //Checking if system is linux based or windows based by checking seprator used.
       String path = null;
       if(check.equalsIgnoreCase("\\")) {
        path = getServletContext().getRealPath("").replace("build\\",""); //Netbeans projects gives real path as Lab6/build/web/ so we need to replace build in the path.
        path+="\\";
       }
    
        if(check.equalsIgnoreCase("/")) {
       path = getServletContext().getRealPath("").replace("build/","");
       path += "/"; //Adding trailing slash for Mac systems.

    }
       
        
       if(userUpload.getFile()!= null) {
           
           String fileNameWithExt = System.currentTimeMillis() + userUpload.getFile().getOriginalFilename();
           file = new File(path+fileNameWithExt);
           String context = getServletContext().getContextPath();

       
           
           userUpload.getFile().transferTo(file);
           userUpload.setPath(context +"/" + fileNameWithExt);
           fileDAO.addFile(userUpload);

       }
        
    } 
     

    

}
