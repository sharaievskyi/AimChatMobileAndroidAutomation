Feature: Authorization

#  Background:
#    Given wait while app would be loaded

  Scenario: 01.001 Sign in to your Team screen.
    Then the "Sign in to your Team" screen is opened

  Scenario: 01.002 Check "Sign in to your Team" function with valid data.
    Given the "Sign in to your Team" screen is opened
    When enter "chat" in the "Your team url" input field
    When tap on the "Continue" button
    Then the "Sign in to Aimprosoft" screen is opened

  Scenario: 01.003 Check "Sign in to your Team" function with valid data.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "Continue" button
    Then the "Sign in to Aimprosoft" screen is opened

  Scenario: 01.004 Check "Sign in to your Team" function with valid data.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-stage" in the "Your team url" input field
    When tap on the "Continue" button
    Then the "Sign in to Aimprosoft" screen is opened

  Scenario: 01.005 Check "Sign in to your Team" function with invalid data.
    Given the "Sign in to your Team" screen is opened
    When enter "dqwdqd" in the "Your team url" input field
    When tap on the "Continue" button
    Then "Team URL isn't correct, please try again" alert is displayed

  Scenario: 01.006 Check "Sign in to your Team" function with invalid data.
    Given the "Sign in to your Team" screen is opened
    When enter "12534163" in the "Your team url" input field
    When tap on the "Continue" button
    Then "Team URL isn't correct, please try again" alert is displayed

  Scenario: 01.007 Check "Sign in to your Team" function with invalid data.
    Given the "Sign in to your Team" screen is opened
    When enter "##%$%$#" in the "Your team url" input field
    When tap on the "Continue" button
    Then "Team URL isn't correct, please try again" alert is displayed

  Scenario: 01.008 Check "Sign in to your Team" function with the empty "Your-team-URL" field.
    Given the "Sign in to your Team" screen is opened
    When tap on the "Continue" button
    Then the "Continue" button is disabled

  Scenario: 01.009 Check transition by tap on the "Privacy Policy" link.
    Given the "Sign in to your Team" screen is opened
    When tap on the "Privacy Policy" link
    Then the "Privacy Policy" screen is opened

  Scenario: 01.010 Check transition by tap on the "Back" button in the "Privacy Policy" screen.
    Given the "Sign in to your Team" screen is opened
    When tap on the "Privacy Policy" link
    Then the "Privacy Policy" screen is opened
    When tap on the Back button
    Then the "Sign in to your Team" screen is opened

  Scenario: 01.011 Check sign in with the valid data into the chat-demo.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "androidQA1" in the "Login" input field
    When enter "qwerty123" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened

  Scenario: 01.012 Check sign in with the valid data into the chat-stage.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-stage" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened

  Scenario: 01.014 Check login with invalid credentials.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "qwddw@email.com" in the "Login" input field
    When enter "qwerty123" in the "Password" input field
    And tap on the "SIGN IN" button
    Then "We cannot find a user with that login and password combination, please try again." alert is displayed

  Scenario: 1.015 Check login with empty fields.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    And tap on the "SIGN IN" button
    Then the "SIGN IN" button is disabled

  Scenario: 1.016 Check login with the whitespace in the "Password" field.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "androidQA1" in the "Login" input field
    When enter "   " in the "Password" input field
    And tap on the "SIGN IN" button
    Then "We cannot find a user with that login and password combination, please try again." alert is displayed

  Scenario: 1.017 Check login with special characters in the login field.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "&^%^%" in the "Login" input field
    When enter "   " in the "Password" input field
    And tap on the "SIGN IN" button
    Then "We cannot find a user with that login and password combination, please try again." alert is displayed

  Scenario: 1.018 Check login with special characters in the password field.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "androidQA1" in the "Login" input field
    When enter "%??*" in the "Password" input field
    And tap on the "SIGN IN" button
    Then "We cannot find a user with that login and password combination, please try again." alert is displayed

  Scenario: 1.023 Check transition by tap on the "Forgot your password?" link.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When tap on the "Forgot your password?" link
    Then the "Forgot password?" screen is opened

  Scenario: 1.024 Check transition by tap on the "Back" button in the "Sign in to Aimprosoft" screen.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When tap on the "Forgot your password?" link
    Then the "Forgot password?" screen is opened
    When tap on the "Back" button
    Then the "Sign in to Aimprosoft" screen is opened

#  Scenario:
#
#
#
#  Scenario: 01. Login to chat.
#    Given the "Sign in to your Team" screen is opened
#    When enter "chat-demo" in the "Your team url" input field
#    When tap on the "CONTINUE" button
#    And enter "chat-demo" in the "Login" input field
#    And enter "chat-demo" in the "Password" input field
#    And hide the keyboard
#    And tap on the "SIGN IN" button
#
#  Scenario: 01.100 Login
#    Given the "Sign in to your Team" screen is opened
#    When login using the properties file
#    Then the user is logged in