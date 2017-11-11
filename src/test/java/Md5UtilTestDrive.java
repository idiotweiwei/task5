import com.ptteng.gwj.util.DesUtil;
import com.ptteng.gwj.util.Md5Util;

public class Md5UtilTestDrive {
    public static void main(String[] args){
        try{
            //自定义密钥
            DesUtil des = new DesUtil("Java");
            String src = "需要进行加密的字符串";
            String src1 = des.encrypt(src);
            String src2 = des.decrypt(src1);
            String src3 = Md5Util.getMd5(src1);
            System.out.println("DES加密前的字符：" + src + ",长度" + src.length());
            System.out.println("DES加密后的字符：" + src1 + ",长度" + src1.length());
            System.out.println("DES解密后的字符：" + src2 + ",长度" + src2.length());
            System.out.println("MD5加密后的字符：" + src3 + ",长度" + src3.length());
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
