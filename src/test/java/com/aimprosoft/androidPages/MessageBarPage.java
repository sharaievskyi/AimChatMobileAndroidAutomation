package com.aimprosoft.androidPages;

import com.aimprosoft.locators.AndroidLocators;
import com.aimprosoft.myDriver.appium.core.MobilePageObject;
import com.aimprosoft.utils.LoginSecureUtils;
import org.openqa.selenium.WebDriver;

public class MessageBarPage extends MobilePageObject {

    public MessageBarPage (WebDriver driver) { super(driver);}

    public boolean emptyInputFieldContainPlaceholder(String elementName) {
        return $$(AndroidLocators.MAIN_INPUT).getText().equals(elementName);
    }
}
