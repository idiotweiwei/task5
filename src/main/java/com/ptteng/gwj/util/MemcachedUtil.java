package com.ptteng.gwj.util;

import com.whalin.MemCached.MemCachedClient;
import com.whalin.MemCached.SockIOPool;

public class MemcachedUtil {
    private static MemCachedClient cachedClient = new MemCachedClient();

    static{
        SockIOPool pool = SockIOPool.getInstance();

        String[] servers = {"127.0.0.1:11211"};
        Integer[] weights = {3};

        pool.setServers(servers);
        pool.setWeights(weights);

        pool.setInitConn(10);
        pool.setMinConn(10);
        pool.setMaxConn(1000);
        pool.setMaxIdle(1000*60*60);

        pool.setMaintSleep(60);

        pool.setNagle(false);
        pool.setSocketTO(60);
        pool.setSocketConnectTO(0);

        pool.initialize();
    }

    private MemcachedUtil(){

    }

    public static boolean add(String key,Object value){
        return cachedClient.add(key,value);
    }

    public static boolean add(String key,Object value,Integer expire){
        return cachedClient.add(key,value,expire);
    }

    public static  boolean put(String key,Object value){
        return cachedClient.set(key,value);
    }

    public static boolean put(String key,Object value,Integer expire){
        return cachedClient.set(key,value,expire);
    }

    public static  boolean replace(String key,Object value){
        return cachedClient.replace(key,value);
    }

    public static boolean replace(String key,Object value,Integer expire){
        return cachedClient.replace(key,value,expire);
    }

    public static Object get(String key){
        return cachedClient.get(key);
    }
}
