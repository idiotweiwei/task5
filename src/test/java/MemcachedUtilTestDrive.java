import com.ptteng.gwj.entities.Student;
import com.ptteng.gwj.util.MemcachedUtil;
import org.junit.Test;

public class MemcachedUtilTestDrive {
    @Test
    public void testMemcached(){
        MemcachedUtil.put("age","22",60);
        String age = (String)MemcachedUtil.get("age");
        System.out.println("存储的age为："+MemcachedUtil.get("age"));

        //添加学员实体到缓存中
        Student s = new Student();
        s.setStudentName("老大");
        MemcachedUtil.put("name",s,60);
        Student leader = (Student)MemcachedUtil.get("name");
        System.out.println("存储的name为："+leader.getStudentName());
    }
}
