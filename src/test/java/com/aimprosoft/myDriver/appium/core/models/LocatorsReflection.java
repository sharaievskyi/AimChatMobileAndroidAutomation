package com.aimprosoft.myDriver.appium.core.models;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.lang.reflect.Field;

public class LocatorsReflection {

    private static final Logger LOGGER = LoggerFactory.getLogger(LocatorsReflection.class);

    public static String getSelector(String locatorsClassName, String selectorName) {
        Class<?> aClass;
        String locatorValue = "";
        try {
            aClass = Class.forName(locatorsClassName);
            Field field = aClass.getField(normalizeSelectorName(selectorName));
            field.setAccessible(true);
            Class<?> targetType = field.getType();
            locatorValue = String.valueOf(field.get(targetType.newInstance()));
        } catch (ClassNotFoundException |
                IllegalAccessException |
                InstantiationException e) {
            LOGGER.error("The interface " + locatorsClassName + " is not found \n", e);
        } catch (NoSuchFieldException e) {
            LOGGER.error("The locator with name " + selectorName + " is not found \n", e);
        }
        return locatorValue;
    }

    private static String normalizeSelectorName(String selectorName) {
        return selectorName.replace(' ', '_').toUpperCase();
    }
}