package com.aimprosoft.myDriver.appium.core;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.MobileElement;
import org.openqa.selenium.By;

public class Selectors {

    public static MobileElement elementByIdOrClassName(AppiumDriver driver, String idOrClassName) {
        if (isId(idOrClassName)) {
            return (MobileElement) driver.findElement(By.id(idOrClassName));
        } else {
            return (MobileElement) driver.findElement(By.className(idOrClassName));
        }
    }

    private static boolean isId(String idOrClassName) {
        if (idOrClassName.contains(".")) {
            return false;
        }
        return true;
    }
}