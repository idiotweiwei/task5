package com.ptteng.gwj.dao;

import com.ptteng.gwj.entities.Profession;

import java.util.List;

public interface ProfessionDao {

    //前端方向
    List<Profession> getInformationFront();

    //后端方向
    List<Profession> getInformationRear();

    //运维方向
    List<Profession> getInformationOperation();
}
