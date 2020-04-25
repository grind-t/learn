import java.io.*;
import java.nio.ByteBuffer;
import java.time.LocalTime;
import java.util.*;
import java.util.Map.*;

public class Main {
    public static void main(String[] args) {

        byte [] buff = new byte[90000];
        int param, size, attribute, type, length, count=0;
        long time;
        String str;
        TreeMap<String, String> result = new TreeMap<String, String>();
        try {
            File f = new File("190829_v29854.KNP");
            FileInputStream f_input= new FileInputStream(f);
            Config config = new Config("KNP-173.14.33.58.dat.xml");
            f_input.read(buff, 0, 32);
            while(f_input.read(buff,0,16) > 0 && count < 1000) {
                param = ByteBuffer.wrap(new byte[]{0, 0, buff[0], buff[1]}).getInt();
                if(param == 0xFFFF) continue;
                count++;
                time = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, buff[2], buff[3], buff[4], buff[5]}).getLong();
                LocalTime localTime = LocalTime.ofNanoOfDay(time * 1000000);
                size = ByteBuffer.wrap(new byte[]{0, 0, 0, buff[6]}).getInt();
                attribute = buff[7]>>4 & 0xF;
                type = buff[7]&0xF;
                str = "param=" + param + " name=" + config.params.get(param) + " time=" + localTime.toString() + " size=" + size + " attrubute=" + attribute + " type=" + type;
                if(type == 3) {
                    length = ByteBuffer.wrap(new byte[]{0, 0, buff[10], buff[11]}).getInt();
                    if(length > 4) {
                        str += " pointLength=" + length;
                        f_input.read(buff,0,length-4);
                    }
                }
                else if (type == 0) {
                    long value = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, buff[12], buff[13], buff[14], buff[15]}).getLong();
                    str += " long=" + value;
                }
                else if (type == 1) {
                    double value = ByteBuffer.wrap(new byte[]{buff[8], buff[9], buff[10], buff[11], buff[12], buff[13], buff[14], buff[15]}).getDouble();
                    str += " double=" + value;
                }
                else if (type == 2) {
                    length = ByteBuffer.wrap(new byte[]{0, 0, buff[10], buff[11]}).getInt();
                    long value = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, buff[12], buff[13], buff[14], buff[15]}).getLong();
                    str += " codeLength=" + length + " code=" + value;
                }
                String name = config.params.get(param);
                String tm = result.get(name);
                if (tm == null) result.put(name, str);
                else result.put(name, tm + "\n" + str);
            }
            f_input.close();	
        }
        catch(FileNotFoundException e) {
            System.out.println("Error!!!");
        }
        catch(IOException ex) {
            System.out.println("Error2!!!");
        }		
        for (Entry<String, String> kv : result.entrySet()) {
            System.out.println(kv.getValue());
        }
        System.out.println("count = " + count);
    }
}
