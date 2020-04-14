package com.aimprosoft.steps;

import com.aimprosoft.steps.serenity.MessageHistoryUserSteps;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class MessageHistorySteps {

    @Steps
    MessageHistoryUserSteps steps;

    @Then("the chat history is opened")
    public void theChatHistoryIsOpened() {
        steps.theChatHistoryIsOpened();
    }

    @Then("message marked as {string}")
    public void messageMarkedAs(String elementId) {
        steps.messageMarkedAs(elementId);
    }

    @Then("mark as {string} disappears")
    public void markAsDisappears(String elementId) {
        steps.markAsDisappears(elementId);
    }

    @When("tap on the Delete button in the pop-up menu")
    public void tapOnTheDeleteButtonInThePopUpMenu() {
        steps.tapOnTheDeleteButtonInThePopUpMenu();
    }

    @When("tap on the Cancel button in the pop-up menu")
    public void tapOnTheCancelButtonInThePopUpMenu() {
        steps.tapOnTheCancelButtonInThePopUpMenu();
    }

    @Then("content pop-up menu is opened")
    public void contentPopUpMenuIsOpened() {
        steps.contentPopUpMenuIsOpened();
    }

    @Then("the pop-up menu is opened in the message details screen")
    public void thePopUpMenuIsOpenedInTheMessageDetailsScreen() {
        steps.thePopUpMenuIsOpenedInTheMessageDetailsScreen();
    }

    @Then("message marked as {string} between {string} username and {string} message")
    public void messageMarkedAsBetweenUsernameAndMessage(String element, String userName, String textMessage) {
        steps.verifyThatTheMessageMarkedAsPinnedBetweenUserNameAndTextMessage(element, userName, textMessage);
    }

    @Then("the reaction button is presented near {string} added reaction")
    public void theReactionButtonIsPresentedNearAddedReaction(String reactionId) {
        steps.VerifyThatTheReactionButtonIsPresentedNearAddedReaction(reactionId);
    }

    @Then("{string} alert is not present")
    public void alertIsNotPresent(String textAlert) {
        steps.alertIsNotPresent(textAlert);
    }

    @Then("the message {string} is visible")
    public void theMessageIsVisible(String textMessage) {
        steps.theMessageIsVisible(textMessage);
    }

    @Then("the New messages separator is presented")
    public void theNewMessagesSeparatorIsPresented() {
        steps.verifyThatTheNewMessageSeparatorIsPresent();
    }

    @Then("the {string} separator is presented")
    public void theSeparatorIsPresented(String elementName) {
        steps.verifyThatTheSeparatorWithDateIsPresent(elementName);
    }

    @Then("the {string} separator is not displayed")
    public void theSeparatorIsNotDisplayed(String elementName) {
        steps.verifyThatTheSeparatorWithDateIsNotPresent(elementName);
    }
}
