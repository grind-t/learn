package xml;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class Config {
	String nameInputFile;
	String nameOutputFile;
	Config() throws ParserConfigurationException, SAXException, IOException {
		load(new FileInputStream("tmdat_config.xml"));
	}
	private void load(InputStream inputStream) 
            throws ParserConfigurationException, SAXException, IOException {
        Document doc;
        try {
            DocumentBuilder parser = DocumentBuilderFactory.newInstance()
                    .newDocumentBuilder();
            doc = parser.parse(inputStream);
        } finally {
            inputStream.close();
        }
        final Element root = doc.getDocumentElement();
        final NodeList topNodes = root.getChildNodes();
        for (int i = 0; i < topNodes.getLength(); i++) {
            final Node node = topNodes.item(i);
            if (!(node instanceof Element))
                continue;
            final Element element = (Element)node;
            if ("tmfile".equals(element.getTagName())) {
            	nameInputFile = element.getAttribute("inputFile");
            	nameOutputFile = element.getAttribute("outputFile");
            }
        }
	}
	public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException {
		Config obj = new Config();
		System.out.println("inputFile = " + obj.nameInputFile + ", outputFile = "+ obj.nameOutputFile);
	}

}
