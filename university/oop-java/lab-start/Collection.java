package tmDat;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.FileWriter;
import java.util.TreeSet;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class Collection {
	TreeSet<Struct> arr = new TreeSet<Struct>();
	InputStream inputStream;
	FileWriter out;
	Collection(InputStream inputStream, FileWriter out) throws ParserConfigurationException, SAXException, IOException {
		this.inputStream = inputStream; 
		this.out = out;
		load();
	}
	private void load() 
            throws ParserConfigurationException, SAXException, IOException {
		int number;
		String name;
		Document doc;
        int count=0, pr=0;
        try {
            DocumentBuilder parser = DocumentBuilderFactory.newInstance()
                    .newDocumentBuilder();
            doc = parser.parse(inputStream);
	        final NodeList topNodes = doc.getElementsByTagName("Param");    
	        for (int i = 0; i < topNodes.getLength(); i++) {
	            final Node node = topNodes.item(i);
	            if (!(node instanceof Element))
	                continue;
	            final Element element = (Element)node;
	            if ("Param".equals(element.getTagName())) {
	            	number = Integer.parseInt(element.getAttribute("number"));
	            	name = element.getAttribute("name");
	            	Struct elem = new Struct(number, name);
	            //	System.out.println(number + " " + name);
		        
			arr.add(elem);
			
		        count++;
			if(count!=arr.size() && pr==0) {
				System.out.println(number + " " + name);
				pr++;
			}
	            }
	        }
	        System.out.println("count=" + count + " size=" + arr.size());	        
        } finally {
           
        }
	}
	void print() {
		 try {
			 for(Struct item : arr) {		 
	        	out.write(item.getName() + " " + item.getNumber() + "\n");
	        }
			
		 }
		 catch(Exception e) {
				System.out.println(e.toString()); 
		 } 
	}
	public class Struct implements Comparable<Struct> {
		private int number;
		private String name;
		Struct(int number, String name) {
			this.name = name;
			this.number = number;
		}
		String getName() {
			return name;
		}
		int getNumber() {
			return number;
		}
		public int compareTo(Struct st) {
			return name.compareTo(st.getName());
		}
	}
	public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException {
		InputStream inputfile = new FileInputStream("KNP-173.14.33.58.dat.xml");
		FileWriter outputfile= new FileWriter("KNP_TreeSet.txt");
		Collection obj = new Collection(inputfile, outputfile);
		obj.print();
		inputfile.close();
        	outputfile.close();
	}

}
