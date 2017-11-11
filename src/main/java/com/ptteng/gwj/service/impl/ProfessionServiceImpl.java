package com.ptteng.gwj.service.impl;

import com.ptteng.gwj.dao.ProfessionDao;
import com.ptteng.gwj.entities.Profession;
import com.ptteng.gwj.service.ProfessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("professionService")
public class ProfessionServiceImpl implements ProfessionService {

    @Autowired
    ProfessionDao professionDao;

    //前端方向
    public List<Profession> getInformationFront(){
        return professionDao.getInformationFront();
    }

    //后端方向
    public List<Profession> getInformationRear(){
        return professionDao.getInformationRear();
    }

    //运维方向
    public List<Profession> getInformationOperation(){
        return professionDao.getInformationOperation();
    }
}
