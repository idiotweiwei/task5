package com.ptteng.gwj.controller;


import com.ptteng.gwj.entities.Student;
import com.ptteng.gwj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/a")
public class StudentController {

    @Autowired
    StudentService studentService;

    //学员列表
    @RequestMapping(value = "/studentlist",method = RequestMethod.GET)
    public String getAllStudent(Model model){
        List<Student> list = studentService.getAllStudent();
        model.addAttribute("list",list);
        return "/jsp/getAllStudent.jsp";
    }


    //跳转到学员增加页面
    @RequestMapping(value = "/studentUI",method = RequestMethod.GET)
    public String addUI(){
        return "/jsp/addStudent.jsp";
    }

    //学员增加传值
    @RequestMapping(value = "/student",method = RequestMethod.POST)
    public String addStudent(Student student){
        student.setCreateAt(System.currentTimeMillis());
        student.setUpdateAt(System.currentTimeMillis());
        studentService.addStudent(student);
        return "redirect:/a/studentlist";
    }


    //删除指定学员信息
    @RequestMapping(value = "/student",method = RequestMethod.DELETE)
    public String deleStudent(Student student){
        studentService.deleteStudent(student);
        return "redirect:/a/studentlist";
    }


    //跳转到学员修改页面
    @RequestMapping(value = "/studentpages",method = RequestMethod.GET)
    public String updateUI(Student student,Model model){
        Student s = studentService.getStudent(student.getId());
        model.addAttribute("s",s);
        return "/jsp/updateStudent.jsp";
    }

    //学员修改传值
    @RequestMapping(value = "/student",method = RequestMethod.PUT)
    public String updateStudent(Student student){
        student.setUpdateAt(System.currentTimeMillis());
        studentService.updateStudent(student);
        return "redirect:/a/studentlist";
    }


    //跳转到学员查找页面
    @RequestMapping(value = "/studentpage",method = RequestMethod.GET)
    public String searchUI(){
        return "/jsp/getStudent.jsp";
    }

    //指定id学员页面
    @RequestMapping(value = "/student/id",method = RequestMethod.GET)
    public String getStudent(Long searchId,Model model){
        Student ss = studentService.getStudent(searchId);
        model.addAttribute("ss",ss);
        return "/a/studentpage";
    }






    //统计总数和已工作人员及其列表
    @RequestMapping(value = "/home",method = RequestMethod.GET)
    public String numbers(Model model){
        int numbers = studentService.numberAll();
        int number = studentService.numberWorking();
        List<Student> ls = studentService.findWorking();
        model.addAttribute("numbers",numbers);
        model.addAttribute("number",number);
        model.addAttribute("ls",ls);
        return "home.page";
    }
}
