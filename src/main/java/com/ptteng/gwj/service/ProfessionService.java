package com.ptteng.gwj.service;

import com.ptteng.gwj.entities.Profession;

import java.util.List;

public interface ProfessionService {

    //前端方向
    List<Profession> getInformationFront();

    //后端方向
    List<Profession> getInformationRear();

    //运维方向
    List<Profession> getInformationOperation();
}
