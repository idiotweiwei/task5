package com.ptteng.gwj.dao;

import com.ptteng.gwj.entities.Student;

import java.util.List;

public interface StudentDao {

    //学员列表
    List<Student> getAllStudent();

    //增加
    int addStudent(Student student);

    //删除
    void deleteStudent(long id);

    //修改
    int updateStudent(Student student);

    //查找
    Student getStudent(long id);

    //统计总数
    int numberAll();

    //统计已工作学员数
    int numberWorking();

    //获取已工作学员列表
    List<Student> findWorking();
}
