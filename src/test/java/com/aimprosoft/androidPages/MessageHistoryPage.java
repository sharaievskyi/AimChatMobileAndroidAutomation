package com.aimprosoft.androidPages;

import com.aimprosoft.locators.AndroidButtonsLocators;
import com.aimprosoft.locators.AndroidLocators;
import com.aimprosoft.myDriver.appium.core.MobilePageObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import java.util.concurrent.TimeUnit;

public class MessageHistoryPage extends MobilePageObject {

    public MessageHistoryPage(WebDriver driver) { super(driver);}

    public boolean theChatHistoryIsOpened() {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.id(AndroidLocators.CHAT_LIST)));
        return $$(AndroidLocators.CHAT_LIST).isDisplayed();
    }

    public boolean messageMarkedAs(String elementId) {
        return $(AndroidLocators.PINNED_STARRED.replace("$1", elementId)).isDisplayed();
    }

    public boolean markAsDisappears(String elementId) {
        return $(AndroidLocators.PINNED_STARRED.replace("$1", elementId)).isCurrentlyVisible();
    }

    public void tapOnTheDeleteButtonInThePopUpMenu() {
        $(AndroidButtonsLocators.DELETE_BTN_POP_UP_MENU).click();
    }

    public void tapOnTheCancelButtonInThePopUpMenu() {
        $(AndroidButtonsLocators.CANCEL_BTN_POP_UP_MENU).click();
    }

    public boolean contentPopUpMenuIsOpened() {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.CONTENT_POP_UP_MENU)));
        return $(AndroidLocators.CONTENT_POP_UP_MENU).isDisplayed();
    }

    public boolean thePopUpMenuIsOpenedInTheMessageDetailsScreen() {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.LIST_VIEW_POP_UP)));
        return $(AndroidLocators.LIST_VIEW_POP_UP).isDisplayed();
    }

    public boolean verifyThatTheMessageMarkedAsPinnedBetweenUserNameAndTextMessage(String element, String userName, String textMessage) {
        int yUserName = androidElementByTextAndId(userName, AndroidLocators.USERNAME).getLocation().getY();
        int yTextMessage = androidElementByTextAndId(textMessage, AndroidLocators.MESSAGE_CONTENT_TEXT).getLocation().getY();
        int yElement = androidElementByTextAndId(element, AndroidLocators.PINNED_STARRED_ID).getLocation().getY();
        return yUserName < yElement && yElement < yTextMessage;
    }

    public boolean theReactionButtonIsPresentedNearAddedReaction(String reactionId) {
        int xReaction = androidElementByTextAndId(reactionId, AndroidLocators.REACTION).getLocation().getX();
        int xReactionButton = $(AndroidButtonsLocators.REACTION_BTN).getLocation().getX();
        return xReaction < xReactionButton;
    }

    public boolean alertIsNotPresent(String textAlert) {
        return $(AndroidLocators.MESSAGE_CONTENT_TEXT_XPATH.replace("$1", textAlert)).isCurrentlyVisible();
    }

    public boolean theMessageIsVisible(String textMessage) {
        withTimeoutOf(25, TimeUnit.SECONDS)
                .waitFor(ExpectedConditions.presenceOfElementLocated(By.xpath(AndroidLocators.MESSAGE_CONTENT_TEXT_XPATH.replace("$1", textMessage))));
        return $(AndroidLocators.MESSAGE_CONTENT_TEXT_XPATH.replace("$1", textMessage)).isDisplayed();
    }

    public boolean verifyThatTheNewMessageSeparatorIsPresent() {
        return $(AndroidLocators.NEW_MESSAGE_SEPARATOR_XPATH).isDisplayed();
    }

    public boolean verifyThatTheSeparatorWithDateIsPresent(String elementName) {
        return $(AndroidLocators.DATE_SEPARATOR_XPATH.replace("$1", elementName)).isVisible();
    }

    public boolean verifyThatTheSeparatorWithDateIsNotPresent(String elementName) {
        return $(AndroidLocators.DATE_SEPARATOR_XPATH.replace("$1", elementName)).isCurrentlyVisible();
    }
}
