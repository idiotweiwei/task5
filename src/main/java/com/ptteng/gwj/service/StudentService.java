package com.ptteng.gwj.service;

import com.ptteng.gwj.entities.Student;

import java.util.List;

public interface StudentService {

    //学员列表
    List<Student> getAllStudent();

    //增加学员
    void addStudent(Student student);

    //删除学员
    void deleteStudent(Student student);

    //修改学员
    void updateStudent(Student student);

    //查找学员
    Student getStudent(long id);

    //统计总数
    int numberAll();

    //统计已工作的人数
    int numberWorking();

    //获取已工作学员列表
    List<Student> findWorking();

    //查找学员(memcached)
    Student findById(long id);

    //查找学员(redis)
    Student findById1(long id);

    //查找学员(json)
//    Student jsonById(long id);

    //查找学员(json--memcached)
//    Student json1ById(long id);
}
