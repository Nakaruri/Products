package model;
import java.io.Serializable;//直列化可能

public class User implements Serializable{ //Userクラスを生成
	private String id; //idの宣言
	private String familyname; //苗字の宣言
	private String name; //名前の宣言
	private String birthday; //生年月日の宣言
	private String bumon; //部門の宣言
	private String busho; //部署の宣言
	private String pass; //パスワードの宣言
	
	public User() {}
	public User(String id, String familyname, String name, String birthday,String bumon, String busho, String pass) {
		this.id = id;
		this.familyname = familyname;
		this.name = name;
		this.birthday = birthday;
		this.bumon = bumon;
		this.busho = busho;
		this.pass = pass;
		}
		
	public User(String name, String pass) {
		this.name = name;
	    this.pass = pass;
	}
		public String getId() {return id;}
		public String getFamilyname() {return familyname;}
		public String getName() {return name;}
		public String getbirthday() {return birthday;}
		public String getBumon() {return bumon;}
		public String getBusho() {return busho;}
		public String getPass() {return pass;}

	
}

