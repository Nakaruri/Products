package model;

public class LoginLogic {
	public boolean execute(User user) {
		if(user.getPass() == user.getbirthday()){return true;}
		return false;
	}
}
