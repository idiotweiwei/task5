package com.ptteng.gwj.controller;

import com.ptteng.gwj.entities.Profession;
import com.ptteng.gwj.service.ProfessionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
@RequestMapping("/u")
public class ProfessionController {

    @Autowired
    ProfessionService professionService;


    //获取三个不同开发方向的数组
    @RequestMapping(value = "/profession",method = RequestMethod.GET)
    public String getProfession(Model model){
        List<Profession> listfront = professionService.getInformationFront();
        List<Profession> listrear = professionService.getInformationRear();
        List<Profession> listoperation = professionService.getInformationOperation();
        model.addAttribute("listfront",listfront);
        model.addAttribute("listrear",listrear);
        model.addAttribute("listoperation",listoperation);
        return "profession.page";
    }
}
