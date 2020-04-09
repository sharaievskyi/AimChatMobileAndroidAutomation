package com.aimprosoft.steps.serenity;

import com.aimprosoft.androidPages.AuthorizationPage;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import org.junit.Assert;

public class AuthorizationUserSteps extends ScenarioSteps {

    AuthorizationPage authorizationPage;

    @Step
    public void waitForLogoToAppear() {
        authorizationPage.waitForLogoToAppear();
    }
    @Step
    public void loginUsingThePropertiesFile() {
        authorizationPage.loginUsingThePropertiesFile();
    }
    @Step
    public void verifyThatTheUserIsLoggedIn() {
        Assert.assertTrue("The user is not logged in", authorizationPage.verifyThatTheUserIsLoggedIn());
    }
}
