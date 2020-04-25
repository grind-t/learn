package hexPrint;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.FileNotFoundException;
import java.io.IOException;

public class HexPrint {
	
	public static void main(String[] args) {
		byte[] buff = new byte[16];
		int count = 0, temp, size;
		try {
			File f = new File("1802.CM1");
			FileInputStream f_input= new FileInputStream(f);
			FileWriter f_output= new FileWriter("1802.rez");
			while((size=f_input.read(buff,0,16)) > 0) {
				temp = count;
				String s = Integer.toHexString(count);
				int k = 6 - s.length();
				for(int i = 0; i < k; i++) {
					f_output.write("0");
				}
				f_output.write((s + "   "));
				for(int i=0; i < size; i++){
					f_output.write((" " + Integer.toHexString(buff[i]>>4 & 0xf)));
					f_output.write(Integer.toHexString(buff[i] & 0xf));
					count++;
					temp = count;
					temp%=16;
					if(temp == 8)
						f_output.write("   ");
				}
				f_output.write("\n");
			}
			f_input.close();
			f_output.close();
		}
		catch(Exception e) {
			System.out.println("Exception " + e.toString());
		}
	}
}
