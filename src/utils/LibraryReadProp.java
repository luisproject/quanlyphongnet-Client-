package utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

@SuppressWarnings("all")
public class LibraryReadProp {
	private Properties prop;
    public Properties readProp(String fileName){
        prop = new Properties();
        File file = new File(fileName);
        try {
            FileInputStream inputStream = new FileInputStream(file);
            prop.load(inputStream);
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return prop;
    }
}
