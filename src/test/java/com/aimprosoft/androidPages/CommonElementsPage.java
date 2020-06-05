package com.aimprosoft.androidPages;

import com.aimprosoft.locators.AndroidButtonsLocators;
import com.aimprosoft.locators.AndroidFieldLocators;
import com.aimprosoft.locators.AndroidLocators;
import com.aimprosoft.myDriver.AndroidWebDriver;
import com.aimprosoft.myDriver.appium.core.MobilePageObject;
import com.aimprosoft.myDriver.appium.core.models.LocatorsReflection;
import io.appium.java_client.TouchAction;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.time.Duration;
import java.util.concurrent.TimeUnit;

import static com.aimprosoft.locators.AndroidLocators.ELEMENT_WITH_TEXT_XPATH;

public class CommonElementsPage extends MobilePageObject {

    public CommonElementsPage(WebDriver driver) { super(driver);}

    private String getFieldLocator(String fieldName) {
        return LocatorsReflection.getSelector(AndroidFieldLocators.class.getName(), fieldName);
    }

    private String getButtonLocator(String buttonName) {
        return LocatorsReflection.getSelector(AndroidButtonsLocators.class.getName(), buttonName);
    }

    private String getAndroidLocator(String elementName) {
        return LocatorsReflection.getSelector(AndroidLocators.class.getName(), elementName);
    }

    public boolean verifyThatTheWidgetWithTheTextIsPresented(String widgetText) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(ELEMENT_WITH_TEXT_XPATH.replace("$1", widgetText))));
        return androidElementByText(widgetText).isDisplayed();
    }

    public boolean verifyThatTheWidgetWithTheTextAndIdIsPresented(String id, String text) {
        return androidElementByTextAndId(text, getAndroidLocator(id)).isDisplayed();
    }

//    public boolean verifyThatTheErrorMessageIsPresented(String errorMessage) {
//        return androidElementByTextAndId(errorMessage, AndroidLocators.TEXT_INPUT_ERROR).isDisplayed();
//    }

    public boolean verifyThatTheWarningIsDisplayed (String warningMessage) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.className("android.widget.TextView")));
        return androidElementByText(warningMessage).isDisplayed();
    }

    public void enterTheValueInTheElement(String valueToEnter, String fieldName) {
        $$(getFieldLocator(fieldName)).click();
        $$(getFieldLocator(fieldName)).sendKeys(valueToEnter);
    }

    public void clickOnTheButton(String buttonId) {
        $$(getButtonLocator(buttonId)).click();
    }

    public void tapOnTheLink(String linkName) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.className("android.widget.TextView")));
        tap(androidElementByText(linkName));
    }

    public boolean verifyThatTheButtonIsDisabled(String buttonName) {
        return $$(getButtonLocator(buttonName)).isEnabled();
    }

    public void hideTheKeyboard() {
        tapOnBackButton();
    }

    public void swipeFromLeftToRight() {
        horizontalSwipeFromLeftToRight();
    }

    public void swipeFromRightToLeft() {
        horizontalSwipeFromRightToLeft();
    }

    public void tapOnTheElementByText(String elementName) {
        tap(androidElementByText(elementName));
    }

    public boolean verifyThatTheRoomWithNameIsPresented(String roomName) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ROOM_TITLE_NAME_XPATH.replace("$1", roomName))));
        return androidElementByTextAndId(roomName, AndroidLocators.ROOM_TITLE_NAME_ID).isDisplayed();
    }

    public boolean verifyThatTheDirectRoomWithNameIsPresented(String directRoomName) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.DIRECT_ROOM_NAME_XPATH.replace("$1", directRoomName))));
        return androidElementByTextAndId(directRoomName, AndroidLocators.DIRECT_ROOM_NAME_ID).isDisplayed();
    }

    public void longTapOnTheElementByText(String elementName) {
        longTap(androidElementByText(elementName));
    }

    public void tapOnTheBackButton() {
        tap($$(AndroidButtonsLocators.BACK_BTN));
    }

    public boolean theSliderIsTurned(String sliderId, String value) {
        return $$(getButtonLocator(sliderId)).getText().equals(value);
    }

    public boolean verifyThatTheElementByTextIsChecked(String elementByText) {
        return $(AndroidButtonsLocators.MUTE_TIME_BUTTON.replace("$1", elementByText)).getAttribute("checked").equals("true");
    }

    public void tapOnTheMoreOptionButton() {
        tap($$(AndroidButtonsLocators.MORE_OPTION_BTN));
    }

    public void changeTheTextInTheField(String valueToEnter, String fieldName) {
        $$(getFieldLocator(fieldName)).click();
        if ($(AndroidButtonsLocators.DELETE_BTN_MODAL_ANDROID).isVisible()) {
            $(AndroidButtonsLocators.DELETE_BTN_MODAL_ANDROID).click();
        }
        $$(getFieldLocator(fieldName)).clear();
        $$(getFieldLocator(fieldName)).sendKeys(valueToEnter);
    }

    public boolean verifyThatTheElementByIdIsPresented(String elementId) {
        return $$(getAndroidLocator(elementId)).isDisplayed();
    }

    public void tapOnTheElementByTextAndId(String text, String id) {
        tap(androidElementByTextAndId(text,id));
    }

    public void tapOnTheAndroidWidgetImageViewButton() {
        $(AndroidButtonsLocators.REACTION_BTN).click();
    }

    public boolean verifyThatTheWidgetWithTheTextIsNotPresented(String widgetText) {
        return $(ELEMENT_WITH_TEXT_XPATH.replace("$1", widgetText)).isCurrentlyVisible();
    }

    public void clearTheField(String fieldName) {
        $$(getFieldLocator(fieldName)).click();
        if ($(AndroidButtonsLocators.DELETE_BTN_MODAL_ANDROID).isVisible()) {
            $(AndroidButtonsLocators.DELETE_BTN_MODAL_ANDROID).click();
        }
        $$(getFieldLocator(fieldName)).clear();
    }

    public boolean messageIsSharedToTheRoom(String messageText) {
//        return $$(AndroidLocators.SHARE_MESSAGE).isDisplayed() && androidElementByText(messageText).isDisplayed();
        scrollDown();
        return $(AndroidLocators.SHARE_MESSAGE_CONTAINER_XPATH).isVisible() && $(AndroidLocators.SHARE_MESSAGE_TEXT_XPATH.replace("$1", messageText)).isVisible();
    }

    public void tapOnTheRadioButton(String buttonName) {
        $(AndroidButtonsLocators.RADIO_BUTTON.replace("$1", buttonName)).click();
    }

    public boolean verifyThatTheRadioButtonIsChecked(String elementByText) {
        return $(AndroidButtonsLocators.RADIO_BUTTON.replace("$1", elementByText)).getAttribute("checked").equals("true");
    }

    public void waitWhileInputFieldWouldBePresented() {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidFieldLocators.INPUT_FIELD_XPATH)));
    }


    public void longTapOnThe(String elementId) {
        longTap($$(getButtonLocator(elementId)));
    }

    public void tapOnTheElementById(String elementId) {
        $$(getAndroidLocator(elementId)).click();
    }

    public boolean verifyThatTheDetailsScreenIsOpened(String screenName) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", screenName))));
        return $(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", screenName)).isVisible();
    }

    public boolean verifyThatTheTheMessageWasSent(String messageText) {
        withTimeoutOf(60, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.MESSAGE_CONTENT_TEXT_XPATH.replace("$1", messageText))));
        return $(AndroidLocators.MESSAGE_CONTENT_TEXT_XPATH.replace("$1", messageText)).isVisible();
    }

    public boolean removeDirectRoom(String roomName) {
        if ($(AndroidLocators.ROOM_NAME_LEFT_DRAWER_XPATH.replace("$1", roomName)).isVisible()) {
            tap(androidElementByText(roomName));
            withTimeoutOf(60, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.DIRECT_ROOM_NAME_XPATH.replace("$1", roomName))));
            $$(getButtonLocator("THREE_DOTS")).click();
            withTimeoutOf(25, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", "Direct Info"))));
            $(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", "Direct settings")).click();
            withTimeoutOf(25, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", "Hide conversation"))));
            $(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", "Hide conversation")).click();
            withTimeoutOf(60, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ROOM_TITLE_NAME_XPATH.replace("$1", "General"))));
            $$(getButtonLocator("LOGO")).click();
        }
        return $(AndroidLocators.ROOM_NAME_LEFT_DRAWER_XPATH.replace("$1", roomName)).isCurrentlyVisible();
    }

    public boolean removeRoom(String roomName) {
        if ($(AndroidLocators.ROOM_NAME_LEFT_DRAWER_XPATH.replace("$1", roomName)).isVisible()) {
            tap(androidElementByText(roomName));
            withTimeoutOf(60, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ROOM_TITLE_NAME_XPATH.replace("$1", roomName))));
            androidElementByTextAndId(roomName, AndroidLocators.ROOM_TITLE_NAME_ID).isDisplayed();
            $$(getButtonLocator("THREE_DOTS")).click();
            withTimeoutOf(25, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.id("info_title")));
            androidElementByText("Room info").isDisplayed();
            $$(getAndroidLocator("Room settings")).click();
            withTimeoutOf(25, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(ELEMENT_WITH_TEXT_XPATH.replace("$1", "Room settings"))));
            androidElementByText("Room settings").isDisplayed();
            if ($(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", "Delete room")).isVisible()) {
                tap($(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", "Delete room")));
                withTimeoutOf(25, TimeUnit.SECONDS)
                        .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(ELEMENT_WITH_TEXT_XPATH.replace("$1", "Are you sure that you want to delete this room? This cannot be undone"))));
                $$(getButtonLocator("ACCEPT")).click();
            }
            tap($(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", "Leave room")));
            withTimeoutOf(60, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.ROOM_TITLE_NAME_XPATH.replace("General", roomName))));
            androidElementByTextAndId(roomName, AndroidLocators.ROOM_TITLE_NAME_ID).isDisplayed();
            $$(getButtonLocator("LOGO")).click();
        }
        return $(AndroidLocators.ROOM_NAME_LEFT_DRAWER_XPATH.replace("$1", roomName)).isCurrentlyVisible();
    }

    public void waitWhileElementToBeVisible(int waitSec, String xpath) {
        waitABit(250);
        int counter = 0;
        while (!(findBy(xpath).isVisible()) && (counter < 5)) {
            waitABit(waitSec);
            counter++;
        }
    }

    public void waitWhileElementToBeInvisible(int waitSec, String xpath) {
        int counter = 0;
        while ((findBy(xpath).isVisible()) && (counter <= 60)) {
            waitABit(waitSec);
            counter++;
        }
    }

    public void markAllMessagesAsRead() {
        if ($(AndroidLocators.UNREAD_COUNT_ICON).isVisible()) {
            longTap($(AndroidLocators.UNREAD_COUNT_ICON));
            withTimeoutOf(25, TimeUnit.SECONDS)
                    .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(ELEMENT_WITH_TEXT_XPATH.replace("$1", "Mark all as read"))));
            tap($(AndroidLocators.ELEMENT_WITH_TEXT_XPATH.replace("$1", "Mark all as read")));
            waitABit(3000);
        }
    }

    public void tapOnTheField(String elementId) {
        $$(getFieldLocator(elementId)).click();
        waitABit(2000);
    }

    public void tapOnTheEnterButtonOnThePhoneKeyboard() {
        TouchAction action = new TouchAction(AndroidWebDriver.driver());
        action.press(996, 1710).release().perform();
        waitABit(2000);
    }

    public void longTapOnTheField(String fieldId) {
        longTap($$(getFieldLocator(fieldId)));
    }

    public void tapOnThePasteButton() {
        waitABit(2000);
        TouchAction action = new TouchAction(AndroidWebDriver.driver());
        action.press(200, 1510).release().perform();
        waitABit(2000);
    }
}