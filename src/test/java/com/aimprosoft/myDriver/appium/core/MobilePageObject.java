package com.aimprosoft.myDriver.appium.core;

import com.aimprosoft.myDriver.AndroidWebDriver;
import com.google.common.base.Predicate;
import io.appium.java_client.*;
import io.appium.java_client.android.AndroidElement;
import io.appium.java_client.pagefactory.AppiumFieldDecorator;
import io.appium.java_client.pagefactory.TimeOutDuration;
import net.serenitybdd.core.pages.PageObject;
import net.thucydides.core.webdriver.WebDriverFacade;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import java.time.Duration;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class MobilePageObject extends PageObject {

    public MobilePageObject(final WebDriver driver) {
        super(driver, new Predicate<PageObject>() {
            @Override
            public boolean apply(PageObject page) {
                PageFactory.initElements(new AppiumFieldDecorator(((WebDriverFacade) page.getDriver()).getProxiedDriver()), page);
                return true;
            }
        });
        injectAnnotatedFieldsInto(driver, this);
    }

    public void injectAnnotatedFieldsInto(WebDriver driver, Object page) {
        PageFactory.initElements(new AppiumFieldDecorator(driver,
                new TimeOutDuration(5, TimeUnit.SECONDS)), page);
    }

    public MobileElement $$(String idOrClassName) {
        return mobileElement(idOrClassName);
    }

    public AndroidElement androidElementByText(String text) {
        return androidWebElementByText(text);
    }

    public AndroidElement androidElementByTextAndId(String text, String id) {
        return androidWebElementByTextAndId(text, id);
    }

    public List<AndroidElement> androidElementsById(String text) {
        return androidWebElementsById(text);
    }

    private AndroidElement androidWebElementByText(String text) {
        return (AndroidElement) AndroidWebDriver.driver().
                findElement(MobileBy.AndroidUIAutomator("new UiScrollable(new UiSelector()" +
                        ".scrollable(true).instance(0)).scrollIntoView(" +
                        "new UiSelector().textContains(\"" + text + "\"))"));
    }

    private List<AndroidElement> androidWebElementsById(String text) {
        return (List<AndroidElement>) AndroidWebDriver.driver().
                findElements(MobileBy.AndroidUIAutomator("new UiScrollable(new UiSelector()" +
                        ".scrollable(true).instance(0)).scrollIntoView(" +
                        "new UiSelector().textContains(\"" + text + "\"))"));

    }

    private AndroidElement androidWebElementByTextAndId(String text, String id) {
        return (AndroidElement) AndroidWebDriver.driver().
                findElement(MobileBy.AndroidUIAutomator("new UiScrollable(new UiSelector()" +
                        ".scrollable(true).instance(0)).scrollIntoView(" +
                        "new UiSelector().resourceId(\"com.aimprosoft.aimchat:id/" + id + "\").textContains(\"" + text + "\"));"));
    }

    private MobileElement mobileElement(String idOrClassName) {
        return AndroidWebDriver.mobileElement(idOrClassName);
    }

    public void tap(MobileElement element) {
        TouchAction action = new TouchAction(AndroidWebDriver.driver());
        action.press(element).release().perform();
    }

    public void longTap(MobileElement element) {
        TouchAction action = new TouchAction(AndroidWebDriver.driver());
        action.longPress(element).release().perform();
    }

    public void horizontalSwipeFromLeftToRight() {
        TouchAction action = new TouchAction(AndroidWebDriver.driver());
        action.longPress(50, 200, Duration.ofSeconds(1)).moveTo(900, 200).release().perform();
    }

    public void horizontalSwipeFromRightToLeft() {
        TouchAction action = new TouchAction(AndroidWebDriver.driver());
        action.longPress(1040, 200, Duration.ofSeconds(1)).moveTo(100, 200).release().perform();
    }

    public void tapOnBackButton() {
        getDriver().navigate().back();
    }
}