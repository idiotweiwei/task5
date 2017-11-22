import net.spy.memcached.MemcachedClient;

import java.net.InetSocketAddress;
import java.util.concurrent.Future;

public class MemcachedTestDrive {
    public static void main(String[] args){
        try{
            //本地连接Memcached服务
            MemcachedClient mcc = new MemcachedClient(new InetSocketAddress("127.0.0.1",11211));
            System.out.println("connection to server successful");

            //存储数据
            Future fo = mcc.set("age",500,"22");
            //存储状态
            System.out.println("set status:"+fo.get());
            //输出值
            System.out.println("age value in cache:"+mcc.get("age"));

            //关闭连接
            mcc.shutdown();
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
