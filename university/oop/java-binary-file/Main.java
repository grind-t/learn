import java.io.*;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.util.*;

class Main{
    public static void main(String[] args){
        try{
            DataInputStream in = new DataInputStream(new FileInputStream("1802.cm1"));
            FileWriter fw = new FileWriter("output.txt");

            String numeration = "";
            String param = "";
            String time = "";
            String size = "";
            String attribute = "";
            String value = "";
            String format = "%s Номер параметра: %s | Время форматирования параметра: %s | Размерность: %s | Атрибут: %s | Значение параметра: %s%n";
            for (int i = 1; in.available() > 0; i++) {
                byte b1 = in.readByte();
                byte b2 = in.readByte();
                byte[] bytes = new byte[2];
                bytes[0] = b1;
                bytes[1] = b2;
                ByteBuffer bb = ByteBuffer.wrap(bytes);
                System.out.println(bb.getInt());
                String b = String.format("%02x ", b1);
                if (i % 16 == 1) numeration = String.format("%08x ", i - 1);
                if (i % 16 == 0 || in.available() == 0) {
                    if (!param.equals("ff ff "))
                        fw.write(String.format(format, numeration, param, time, size, attribute, value));
                    numeration = param = time = size = attribute = value = "";
                }
                else if (i % 16 < 3) param += b;
                else if (i % 16 < 7) time += b;
                else if (i % 16 < 8) size += b;
                else if (i % 16 < 9) attribute += b;
                else value += b;
                break;
            }

            fw.close();
            in.close();
        } catch (FileNotFoundException e1) {
            e1.printStackTrace();
        } catch (IOException e1) {
            e1.printStackTrace();
        }
    }
}