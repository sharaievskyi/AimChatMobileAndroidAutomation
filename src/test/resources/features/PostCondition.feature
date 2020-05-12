Feature: Post condition

  Scenario Outline: remove direct room
    Given the "Sign in to your Team" screen is opened
    When enter "chat-stage" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser1@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And hide the keyboard
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then remove "<directName>" direct room
    Examples:
      |directName|
      |testuser2 |