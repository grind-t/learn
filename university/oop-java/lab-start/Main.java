package tmDat;
import java.io.*;
import java.util.*;
public class Main {

	public static void main(String[] args) {
		byte [] buff = new byte[90000];
		int type, count=0, length;
		int number;	
		long time;
		try {
			File f = new File("190829_v29854.KNP");
			FileInputStream f_input= new FileInputStream(f);
			f_input.read(buff, 0, 32);
			while(f_input.read(buff,0,16)>0 && count < 10) {
				number = ((buff[0]<<8 & 0xFF00) | (buff[1]&0xFF));
				if(number == 0xFFFF)
					continue;
				count++;
				time = (long)(buff[2]<<24 & 0xFF000000 | buff[3]<<16 & 0xFF0000 | buff[4]<<8 & 0xFF00 | buff[5] & 0xFF);
				type = buff[7]&0xF;
				System.out.print("number=" + number + " time=" + time + " type=" + type);
				if(type == 3) {
					length = buff[10] << 8 & 0xFF00 | buff[11] & 0xFF;
					if(length > 4) {
						System.out.print(" length=" + length);
						f_input.read(buff,0,length-4);
					}
				}
				//switch(type) {... 
				//TmPoint elem = new TmPoint(...);
				// } arrTm.add(elem);		
				System.out.println();
			}
			f_input.close();	
		}
		catch(FileNotFoundException e) {
			System.out.println("Error!!!");
		}
		catch(IOException ex) {
			System.out.println("Error2!!!");
		}		
		System.out.println("count = " + count);
	}


}
