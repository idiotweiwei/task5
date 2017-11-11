package com.ptteng.gwj.entities;

public class User {

    private int userId;
    private long createAt;
    private String userName;
    private String userPassword;
    private long loginAt;
    private long updateAt;


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public long getCreateAt() {
        return createAt;
    }

    public void setCreateAt(long createAt) {
        this.createAt = createAt;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public long getLoginAt() {
        return loginAt;
    }

    public void setLoginAt(long loginAt) {
        this.loginAt = loginAt;
    }

    public long getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(long updateAt) {
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userId +
                ", createAt=" + createAt +
                ", userName='" + userName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", loginAt=" + loginAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
