package com.ptteng.gwj.entities;

public class Profession {
    private long id;
    private String createBy;
    private long createAt;
    private String occupationType;
    private String occupation;
    private String placement;
    private long companies;
    private long students;
    private String point;
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

    public String getOccupationType() {
        return occupationType;
    }

    public void setOccupationType(String occupationType) {
        this.occupationType = occupationType;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getPlacement() {
        return placement;
    }

    public void setPlacement(String placement) {
        this.placement = placement;
    }

    public long getCompanies() {
        return companies;
    }

    public void setCompanies(long companies) {
        this.companies = companies;
    }

    public long getStudents() {
        return students;
    }

    public void setStudents(long students) {
        this.students = students;
    }

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
        this.point = point;
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
        return "Profession{" +
                "id=" + id +
                ", createBy='" + createBy + '\'' +
                ", createAt=" + createAt +
                ", occupationType='" + occupationType + '\'' +
                ", occupation='" + occupation + '\'' +
                ", placement='" + placement + '\'' +
                ", companies=" + companies +
                ", students=" + students +
                ", point='" + point + '\'' +
                ", updateBy='" + updateBy + '\'' +
                ", updateAt=" + updateAt +
                '}';
    }
}
