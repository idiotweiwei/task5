package com.ptteng.gwj.service.impl;


import com.ptteng.gwj.dao.StudentDao;
import com.ptteng.gwj.entities.Student;
import com.ptteng.gwj.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("studentServcice")
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDao studentDao;

    //实现学员列表
    public List<Student> getAllStudent(){
        return studentDao.getAllStudent();
    }

    //实现学员添加
    public void addStudent(Student student){
        studentDao.addStudent(student);
    }

    //实现学员删除
    public void deleteStudent(Student student){
        studentDao.deleteStudent(student.getId());
    }

    //实现学员修改
    public void updateStudent(Student student){
        studentDao.updateStudent(student);
    }

    //实现学员查找
    public Student getStudent(long id){
        return studentDao.getStudent(id);
    }

    //实现统计出来的总数
    public int numberAll(){
        return studentDao.numberAll();
    }

    //实现统计已工作的人数
    public int numberWorking() {
        return studentDao.numberWorking();
    }

    //实现已工作学员列表
    public List<Student> findWorking() {
        return studentDao.findWorking();
    }
}
