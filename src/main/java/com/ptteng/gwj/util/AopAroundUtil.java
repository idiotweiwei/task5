package com.ptteng.gwj.util;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import org.apache.log4j.Logger;

@Aspect
@Component
public class AopAroundUtil {

//    private static Logger logger = Logger.getLogger(AopAroundUtil.class);
//    String logStr = null;

    @Around(value = "execution(* com.ptteng.gwj.controller.StudentController*.*(..))")
    public Object aroundMethod(ProceedingJoinPoint pjd){
        Object result = null;
        try {
            //System.out.println("开始执行命令");
            long startTime = System.currentTimeMillis();
            result = pjd.proceed();
            //System.out.println("结束该次命令");
            long endTime = System.currentTimeMillis();
            //System.out.println("程序运行时间：" + (endTime - startTime) + "ms");
            //logger.debug("程序运行时间：" + (endTime - startTime) + "ms");
            return result;
        }catch (Throwable t){
            t.getMessage();
        }
        System.out.println("返回通知");
        return result;
    }

}
