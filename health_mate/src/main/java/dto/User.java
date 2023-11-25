package dto;


public class User {
    private String userName;
    private String phoneNum;
    private int age;
    private String sex;
    private String userID;
    private String password;
    private boolean registerGym;
    
    public User() {
		super();
	}

    public User(String userName, String phoneNum, int age, String sex, String userID, String password, boolean registerGym) {
        this.userName = userName;
        this.phoneNum = phoneNum;
        this.age = age;
        this.sex = sex;
        this.userID = userID;
        this.password = password;
        this.registerGym = registerGym;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isRegisterGym() {
        return registerGym;
    }

    public void setRegisterGym(boolean registerGym) {
        this.registerGym = registerGym;
    }
}
