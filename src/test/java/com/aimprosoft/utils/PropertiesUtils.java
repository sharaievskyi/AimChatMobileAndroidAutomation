
package com.aimprosoft.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class PropertiesUtils {

    private static final Logger LOGGER = LoggerFactory.getLogger(PropertiesUtils.class);

    public static Properties getProperties(String propertyName) {
        File file = new File(propertyName);
        Properties properties = new Properties();
        try (FileInputStream fileInput = new FileInputStream(file)) {
            properties = new Properties();
            properties.load(fileInput);
        } catch (FileNotFoundException e) {
            LOGGER.error("Cannot find the properties file. Do you have one?", e);
        } catch (IOException e) {
            LOGGER.error("Cannot read the properties file. Check that it's written properly", e);
        }
        return properties;
    }
}
