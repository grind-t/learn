import java.io.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import org.xml.sax.SAXException;
import java.util.*;
import java.util.Map.*;

class Config {
    Map<Integer, String> params = new HashMap<Integer, String>();

    Config(String fXML) {
        try {
            load(new FileInputStream(fXML));
        }
        catch (FileNotFoundException e1) {
            e1.printStackTrace();
        }
        catch (IOException e2) {
            e2.printStackTrace();
        }
        catch (SAXException e3) {
            e3.printStackTrace();
        }
        catch (ParserConfigurationException e4) {
            e4.printStackTrace();
        }
    }

    private void load(InputStream inputStream) throws ParserConfigurationException, SAXException, IOException {
        Document doc;
        DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        doc = parser.parse(inputStream);

        final Element root = doc.getDocumentElement();
        final NodeList paramNodes = root.getElementsByTagName("Param");
        for (int i = 0; i < paramNodes.getLength(); i++) {
            final Node node = paramNodes.item(i);
            if (node.getNodeType() != Node.ELEMENT_NODE) continue;
            final Element element = (Element)node;
            int number = Integer.parseInt(element.getAttribute("number"));
            String name = element.getAttribute("name");
            params.put(number, name);
        }
    }

    public static void main(String[] args) {
        Config obj = new Config("KNP-173.14.33.58.dat.xml");
        for (Entry<Integer, String> kv : obj.params.entrySet()) {
            System.out.println(String.valueOf(kv.getKey()) + " " + kv.getValue());
        }
    }
}