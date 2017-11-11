package com.ptteng.gwj.entities;

public class Student {
    private long id;
    private String createBy;
    private long createAt;
    private String studentName;
    private int isWorking;
    private String studentPosition;
    private String summary;
    private String updateBy;
    private long updateAt;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public long getCreateAt() {
        return createAt;
    }

    public void setCreateAt(long createAt) {
        this.createAt = createAt;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public int getIsWorking() {
        return isWorking;
    }

    public void setIsWorking(int isWorking) {
        this.isWorking = isWorking;
    }

    public String getStudentPosition() {
        return studentPosition;
    }

    public void setStudentPosition(String studentPosition) {
        this.studentPosition = studentPosition;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public long getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(long updateAt) {
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", createBy='" + createBy + '\'' +
                ", createAt=" + createAt +
                ", studentName='" + studentName + '\'' +
                ", isWorking='" + isWorking + '\'' +
                ", studentPosition='" + studentPosition + '\'' +
                ", summary='" + summary + '\'' +
                ", updateBy='" + updateBy + '\'' +
                ", updateAt=" + updateAt +
                '}';
    }
}
