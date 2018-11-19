package org.kadinet.model;
import java.util.Date;

public class NoticeBean {
   private int notice_no;
   
   private String notice_category;
   private String notice_bool;
   private String notice_title;
   private String notice_content;
   private String user_id;
   private Date notice_regdate;
   private int notice_hit;
   
   private int file_no;
   private int file_order;
   private String file_oriname;
   private String file_rename;
   private String file_size;
   
   private String user_name;
   
   public int getNotice_no() {
      return notice_no;
   }
   public void setNotice_no(int notice_no) {
      this.notice_no = notice_no;
   }
   public String getNotice_category() {
      return notice_category;
   }
   public void setNotice_category(String notice_category) {
      this.notice_category = notice_category;
   }
   public String getNotice_bool() {
      return notice_bool;
   }
   public void setNotice_bool(String notice_bool) {
      this.notice_bool = notice_bool;
   }
   public String getNotice_title() {
      return notice_title;
   }
   public void setNotice_title(String notice_title) {
      this.notice_title = notice_title;
   }
   public String getNotice_content() {
      return notice_content;
   }
   public void setNotice_content(String notice_content) {
      this.notice_content = notice_content;
   }
   public String getUser_id() {
      return user_id;
   }
   public void setUser_id(String user_id) {
      this.user_id = user_id;
   }
   public Date getNotice_regdate() {
      return notice_regdate;
   }
   public void setNotice_regdate(Date notice_regdate) {
      this.notice_regdate = notice_regdate;
   }
   public int getNotice_hit() {
      return notice_hit;
   }
   public void setNotice_hit(int notice_hit) {
      this.notice_hit = notice_hit;
   }
   public int getFile_no() {
      return file_no;
   }
   public void setFile_no(int file_no) {
      this.file_no = file_no;
   }
   public int getFile_order() {
      return file_order;
   }
   public void setFile_order(int file_order) {
      this.file_order = file_order;
   }
   public String getFile_oriname() {
      return file_oriname;
   }
   public void setFile_oriname(String file_oriname) {
      this.file_oriname = file_oriname;
   }
   public String getFile_rename() {
      return file_rename;
   }
   public void setFile_rename(String file_rename) {
      this.file_rename = file_rename;
   }
   public String getFile_size() {
      return file_size;
   }
   public void setFile_size(String file_size) {
      this.file_size = file_size;
   }
public String getUser_name() {
	return user_name;
}
public void setUser_name(String user_name) {
	this.user_name = user_name;
}
}