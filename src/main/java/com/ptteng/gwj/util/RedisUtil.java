package com.ptteng.gwj.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public final class RedisUtil {

    //ip地址
    private static String AOOR = "127.0.0.1";
    //端口号
    private static int PORT = 6379;
    //访问密码
    private static String AUTH = "123456";
    //控制一个pool最多有多少个状态为idle(空闲的)的Jedis实例，默认为8
    private static int MAX_IDLE = 200;
    //等待可用连接的最大时间，单位为ms，默认为-1，表示永不超时。如果超过等待时间，则直接抛出JedisConnectionException
    private static int MAX_WAIT = 10000;
    private static int TIMEOUT = 10000;
    //在borrow一个jedis实例，是否提前进行validate操作；如果为true,则得到的jedis实例均是可用的
    private static boolean TEST_ON_BORROW = true;
    private static JedisPool jedisPool = null;

    /**
     * 初始化连接池
     */
    static {
        try {
            JedisPoolConfig config = new JedisPoolConfig();
            config.setMaxIdle(MAX_IDLE);
            config.setMaxWaitMillis(MAX_WAIT);
            config.setTestOnBorrow(TEST_ON_BORROW);
            jedisPool = new JedisPool(config,AOOR,PORT,TIMEOUT,AUTH);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 获取Jedis实例
     * @return
     */
    public synchronized static Jedis getJedis(){
        try{
            if (jedisPool != null){
                Jedis resource = jedisPool.getResource();
                return resource;
            }else {
                return null;
            }
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 释放Jedis资源
     * @Param jedis
     */
    public static void returnResource(final Jedis jedis){
        if (jedis != null){
            jedisPool.returnResource(jedis);
        }
    }
}
