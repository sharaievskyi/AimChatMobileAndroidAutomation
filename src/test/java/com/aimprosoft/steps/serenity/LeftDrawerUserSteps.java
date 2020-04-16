package com.aimprosoft.steps.serenity;

import com.aimprosoft.androidPages.LeftDrawerPage;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import org.junit.Assert;

public class LeftDrawerUserSteps extends ScenarioSteps {

    LeftDrawerPage leftDrawerPage;

    @Step
    public void subscribeToTheRoom(String elementName) {
        leftDrawerPage.subscribeToTheRoom(elementName);
    }
    @Step
    public void addTheDirectInTheRecentDirectList(String elementName) {
        leftDrawerPage.addTheDirectInTheRecentDirectList(elementName);
    }
    @Step
    public void createThePrivateRoom(String elementName) {
        leftDrawerPage.createThePrivateRoom(elementName);
    }
    @Step
    public void theTabIsSelected(String tabName) {
        Assert.assertTrue("The tab " + tabName + " is not selected", leftDrawerPage.theTabIsSelected(tabName));
    }
    @Step
    public void tapOnTheSearchSign() {
        leftDrawerPage.tapOnTheSearchSign();
    }
    @Step
    public void theListContainsWordInEachItemIsPresented(String word) {
        Assert.assertTrue("There are the items that do not contain the word " + word + " in their names",
                leftDrawerPage.verifyTheListThatContainsItemWithText(word));
    }
    @Step
    public void verifyThatTheLeftDrawerDoesNotContainsElement(String roomName) {
        Assert.assertFalse("There are the items that do not contain the word " + roomName + " in their names",
                leftDrawerPage.verifyThatTheLeftDrawerDoesNotContainsElement(roomName));
    }
    @Step
    public void theRoomDoesNotAppearInTheSearchResult(String word) {
        Assert.assertFalse("There are the items that do not contain the word " + word + " in their names",
                leftDrawerPage.theRoomDoesNotAppearInTheSearchResult(word));
    }
    @Step
    public void thePopUpMenuIsOpened(String elementName) {
        Assert.assertTrue("The pop-up menu " + elementName + " is not presented",
                leftDrawerPage.thePopUpMenuIsOpened(elementName));
    }
    @Step
    public void verifyThatTheTitleIsPresentInTheLeftDrawer(String channelName) {
        Assert.assertTrue("The title " + channelName + " is not present in the left drawer", leftDrawerPage.verifyThatTheTitleIsPresentInTheLeftDrawer(channelName));
    }
    @Step
    public void verifyThatTheTitleIsNotPresentInTheLeftDrawer(String channelName) {
        Assert.assertFalse("The title " + channelName + " is present in the left drawer", leftDrawerPage.verifyThatTheTitleIsNotPresentInTheLeftDrawer(channelName));
    }
    @Step
    public void leftDrawerIsOpened() {
        Assert.assertTrue("Left Drawer is not opened", leftDrawerPage.leftDrawerIsOpened());
    }
    @Step
    public void theRoomIsPresentedInTheLeftDrawerSearchResult(String roomName) {
        Assert.assertTrue("The " + roomName + " room is not presented in the Left drawer", leftDrawerPage.theRoomIsPresentedInTheLeftDrawer(roomName));
    }
    @Step
    public void theRoomIsPresentedInTheBrowseRoomsSearchResult(String roomName) {
        Assert.assertTrue("The " + roomName + " room is not presented in the Browse rooms search result", leftDrawerPage.theRoomIsPresentedInTheBrowseRoomsSearchResult(roomName));
    }
    @Step
    public void theRoomIsNotPresentedInTheBrowseRoomsSearchResult(String roomName) {
        Assert.assertFalse("The " + roomName + " room is presented in the Browse rooms search result", leftDrawerPage.theRoomIsNotPresentedInTheBrowseRoomsSearchResult(roomName));
    }
    @Step
    public void theUserIsPresentedInTheStartDirectSearchResult(String userName) {
        Assert.assertTrue("The " + userName + " user is not presented in the Start direct search result", leftDrawerPage.theUserIsPresentedInTheStartDirectSearchResult(userName));
    }
    @Step
    public void theRoomIsNotPresentedInTheLeftDrawer(String roomName) {
        Assert.assertFalse("The " + roomName + " is presented in the left drawer", leftDrawerPage.theRoomIsNotPresentedInTheLeftDrawer(roomName));
    }
    @Step
    public void verifyThatTheRadioButtonIsClickable(String buttonName) {
        Assert.assertTrue("Radio-button is not clickable", leftDrawerPage.verifyThatTheRadioButtonIsClickable(buttonName));
    }
    @Step
    public void verifyThatThePopUpMenuIsOpenedInTheLeftDrawer() {
        Assert.assertTrue("Pop-up menu is not opened in the Left drawer", leftDrawerPage.verifyThatThePopUpMenuIsOpenedInTheLeftDrawer());
    }
    @Step
    public void tapOnTheRoomInTheLeftDrawer(String roomName) {
        leftDrawerPage.tapOnTheRoomInTheLeftDrawer(roomName);
    }
}
