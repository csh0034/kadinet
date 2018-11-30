package org.kadinet.util;
import java.io.File;
import com.oreilly.servlet.multipart.FileRenamePolicy;
public class TimestampFileRenamePolicy implements FileRenamePolicy{
	String id;
    public TimestampFileRenamePolicy(String id){
    	this.id = id;
    }
    public File rename(File f) {
        String name = f.getName();
        String body = null;
        String ext = null;
 
        int dot = name.lastIndexOf(".");
        if (dot != -1) {
            ext = name.substring(dot); 
        } else {
            ext = "";
        }
        body = Long.toString( System.currentTimeMillis() );
 
        File renameFile = new File( f.getParent(), id+"_"+body+ ext);
         
        if( renameFile.exists() ){
            int count = 0;
            do {
                count++;
                String newName = id+"_"+body+"_"+count+ ext;
                renameFile = new File(f.getParent(), newName);
            }while( renameFile.exists() && count < 9999 );
             
        }
        f.renameTo( renameFile );
        return renameFile;
         
    }
}
