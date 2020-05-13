Feature: Post condition

  Scenario: remove rooms
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "androidQA1" in the "Login" input field
    When enter "qwerty123" in the "Password" input field
    And hide the keyboard
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then remove "Alfresco" room
    Then remove "Batman" room
    Then remove "fghfghfgh" room


  Scenario: remove direct room
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "androidQA1" in the "Login" input field
    When enter "qwerty123" in the "Password" input field
    And hide the keyboard
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then remove "testuser2" direct room
    Then remove "androidQA2" direct room