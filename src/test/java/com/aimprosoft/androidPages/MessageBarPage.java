package com.aimprosoft.androidPages;

import com.aimprosoft.locators.AndroidLocators;
import com.aimprosoft.myDriver.appium.core.MobilePageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.concurrent.TimeUnit;

public class MessageBarPage extends MobilePageObject {

    public MessageBarPage (WebDriver driver) { super(driver);}

    public boolean emptyInputFieldContainPlaceholder(String elementName) {
        return $$(AndroidLocators.MAIN_INPUT).getText().equals(elementName);
    }

}
