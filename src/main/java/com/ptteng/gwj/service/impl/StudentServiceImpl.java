package com.ptteng.gwj.service.impl;


import com.ptteng.gwj.dao.StudentDao;
import com.ptteng.gwj.entities.Student;
import com.ptteng.gwj.service.StudentService;
import com.ptteng.gwj.util.SerializeUtil;
import com.whalin.MemCached.MemCachedClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.List;

@Component
@Service("studentServcice")
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDao studentDao;
    @Autowired
    MemCachedClient memCachedClient;
    @Autowired
    private JedisPool jedisPool;

    //实现学员列表
    public List<Student> getAllStudent() {
        return studentDao.getAllStudent();
    }

    //实现学员添加
    public void addStudent(Student student) {
        studentDao.addStudent(student);
    }

    //实现学员删除
    public void deleteStudent(Student student) {
        studentDao.deleteStudent(student.getId());
    }

    //实现学员修改
    public void updateStudent(Student student) {
        studentDao.updateStudent(student);
    }

    //实现学员查找
    public Student getStudent(long id) {
        return studentDao.getStudent(id);
    }

    //实现学员查找(有memcached缓存）
    int count = 1;
    public Student findById(long id){
        Student student = null;
        try {
            student = (Student)memCachedClient.get(id+"");
            //System.out.println("第"+count+"次访问该页面！");
            //System.out.println("从缓存中获得的数据为："+student);
            if(student == null){
                student = studentDao.getStudent(id);
                //System.out.println("缓存中没有，从数据库中获得！");
                if (student != null){
                    memCachedClient.add(student.getId()+"",student);
                    //System.out.println("加入缓存的数据为："+student);
                }
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
        if (count%3 == 0){
            memCachedClient.flushAll();
        //    System.out.println("访问达到三次，清楚缓存--------------------");
        }
        count++;
        return studentDao.getStudent(id);
    }



    //实现学员查找(有redis缓存)
    int a = 1;
    public Student findById1(long id){
        Student student = null;
        Jedis jedis = jedisPool.getResource();
        try {
            student = (Student) SerializeUtil.unserialize(jedis.get((id+"").getBytes()));
            //System.out.println("第"+a+"次访问该页面！");
            //System.out.println("从缓存中获得的数据为："+student);
            if (student == null){
                student = studentDao.getStudent(id);
                //System.out.println("缓存中没有，从数据库中获得！");
                if (student != null){
                    jedis.set((student.getId()+"").getBytes(),SerializeUtil.serialize(student));
                    //System.out.println("加入缓存的数据为："+student);
                }
            }
        }catch (Exception e){
            System.out.println(e.getStackTrace());
        }
        if (a%3 == 0){
                jedis.flushAll();
        //        System.out.println("访问达到三次，清楚缓存--------------------");
            }
            a++;
            jedisPool.returnResource(jedis);
        return studentDao.getStudent(id);
    }

    //Json学员查找
//    public Student jsonById(long id){return studentDao.getStudent(id);}

    //Json学员查找(有memcached缓存）
//    public Student json1ById(long id){
//        Student student = null;
//        try {
//            student = (Student)memCachedClient.get(id+"");
//            if (student == null){
//                student = studentDao.getStudent(id);
//                if (student != null){
//                    memCachedClient.add(student.getId()+"",student);
//                    System.out.println("缓存数据为"+student);
//                }
//            }
//        }catch (Exception e){
//            e.getMessage();
//        }
//        return studentDao.getStudent(id);
//    }

    //实现统计出来的总数
    public int numberAll() {
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
