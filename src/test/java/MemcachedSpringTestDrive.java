import com.ptteng.gwj.entities.Student;
import com.ptteng.gwj.util.RedisUtil;
import com.ptteng.gwj.util.SerializeUtil;
import com.whalin.MemCached.MemCachedClient;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import redis.clients.jedis.Jedis;

public class MemcachedSpringTestDrive {

    ApplicationContext ac = new ClassPathXmlApplicationContext("memcached-spring.xml");
    @Test
    public void test01(){
        MemCachedClient mc = (MemCachedClient)ac.getBean("memcachedClient");
        Student s = new Student();
        s.setStudentName("大佬");
        mc.add("cc",s);
    }

    @Test
    public void getName(){
        MemCachedClient mc = (MemCachedClient)ac.getBean("memcachedClient");
        Student s = (Student)mc.get("cc");
        System.out.println(s.getStudentName());
    }

    @Test
    public void gegss() {
        Jedis jedis = RedisUtil.getJedis();
        jedis.sadd("jnshu","ptteng");
    }

    @Test
    public void getss(){
        Jedis jedis = RedisUtil.getJedis();
        Student st = new Student();
        st.setStudentName("jack");
        jedis.set(st.getStudentName().getBytes(), SerializeUtil.serialize(st));
    }

    @Test
    public void getst(){
        Jedis jedis = RedisUtil.getJedis();
        Student st = (Student)SerializeUtil.unserialize(jedis.get("jack".getBytes()));
        System.out.println(st);
        System.out.println(st.getStudentName());
    }
}
