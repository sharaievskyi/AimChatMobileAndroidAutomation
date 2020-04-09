package com.aimprosoft.steps;

import com.aimprosoft.steps.serenity.AuthorizationUserSteps;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class AuthorizationSteps {

    @Steps
    AuthorizationUserSteps steps;

    @Given("wait while app would be loaded")
    public void waitWhileAppWouldBeLoaded() {
        steps.waitForLogoToAppear();
    }

    @When("login using the properties file")
    public void loginUsingThePropertiesFile() {
        steps.loginUsingThePropertiesFile();
    }

    @Then("the user is logged in")
    public void theUserIsLoggedIn() {
        steps.verifyThatTheUserIsLoggedIn();
    }
}
