Feature: Message history

  Background: Login to chat
    When login using the properties file
    Then the user is logged in

  Scenario: 3.001 Check tap in chat history.
    Given the "General" room is opened
    When enter "qwerty1" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty1" is present
    And tap on "qwerty1" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty1" is present

  Scenario: 3.002 Check "Back" button in the "Message details screen"
    Given the "General" room is opened
    When enter "qwerty2" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty2" is present
    When tap on "qwerty2" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty2" is present
    And tap on the Back button
    Then the chat history is opened

  Scenario: 3.003 Check for mark as "starred" message in "Message details screen".
    Given the "General" room is opened
    When enter "qwerty3" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty3" is present
    When tap on "qwerty3" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty3" is present
    When tap on the "Star sign" button
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty3" message

  Scenario: 3.004 Check for mark as "starred" message in chat history.
    Given the "General" room is opened
    When enter "qwerty4" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty4" is present
    When tap on "qwerty4" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty4" is present
    When tap on the "Star sign" button
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty4" message
    When tap on the Back button
    Then the chat history is opened
    Then message "qwerty4" is present
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty4" message

  Scenario: 3.005 Check for unstarred message in "Message details screen".
    Given the "General" room is opened
    When enter "qwerty5" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty5" is present
    When tap on "qwerty5" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty5" is present
    When tap on the "Star sign" button
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty5" message
    When tap on the "Star sign" button
    Then mark as "starred" disappears

  Scenario: 3.006 Check for unstarred message in chat history.
    Given the "General" room is opened
    Then Left Drawer is opened
    Then the "CaptainAmerica" room is presented in the left drawer
    When tap on the "CaptainAmerica" room
    Then the "CaptainAmerica" room is opened
    When enter "qwerty6" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty6" is present
    When tap on "qwerty6" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty6" is present
    When tap on the "Star sign" button
    Then message marked as "starred"
    And tap on the Back button
    Then the chat history is opened
    Then message "qwerty6" is present
    Then message marked as "starred"
    When tap on "qwerty6" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty6" is present
    Then message marked as "starred"
    When tap on the "Star sign" button
    Then mark as "starred" disappears
    And tap on the Back button
    Then the chat history is opened
    Then message "qwerty6" is present
    Then mark as "starred" disappears

  Scenario: 3.007 Check tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    When tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message" is present
    When tap on "test message" message in chat history
    Then the "Message" details screen is opened
    Then message "test message" is present

  Scenario: 3.008 Check "Back" button in the "Message details" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    When tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message" is present
    When tap on "test message" message in chat history
    Then the "Message" details screen is opened
    Then message "test message" is present
    And tap on the Back button
    Then the chat history is opened
    Then the "Marketplace" room is opened

  Scenario: 3.009 Check Share message in direct room.
    Given the "General" room is opened
    When enter "qwerty7" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty7" is present
    When tap on "qwerty7" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty7" is present
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    And tap on the "a.baiova" room
    And tap on the "Apply select room" button
    Then the "Message" details screen is opened
    And tap on the Back button
    Then the chat history is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    Then message "qwerty7" is shared to the room

  Scenario: 3.010 Check Share message in public room.
    Given the "General" room is opened
    When enter "qwerty8" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty8" is present
    When tap on "qwerty8" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty8" is present
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    When enter "Iron" in the "room name search" input field
    When tap on the "IronMan" room
    And tap on the "Apply select room" button
    Then the "Message" details screen is opened
    And tap on the Back button
    Then the chat history is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    Then message "qwerty8" is shared to the room

  Scenario: 3.011 Check Share message in private room.
    Given the "General" room is opened
    When enter "qwerty9" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty9" is present
    When tap on "qwerty9" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty9" is present
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    When enter "Tho" in the "room name search" input field
    When tap on the "Thor" room
    And tap on the "Apply select room" button
    Then the "Message" details screen is opened
    And tap on the Back button
    Then the chat history is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    Then message "qwerty9" is shared to the room

  Scenario: 3.012 Check Share message in direct room with a comment.
    Given the "General" room is opened
    When enter "qwerty10" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty10" is present
    When tap on "qwerty10" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty10" is present
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    When enter "comment" in the "Add a message" input field
    And tap on the "a.baiova" room
    And tap on the "Apply select room" button
    Then the "Message" details screen is opened
    And tap on the Back button
    Then the chat history is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    Then message "qwerty10" is shared to the room
    Then message "comment" is present

  Scenario: 3.013 Check Share message in private room with a comment.
    Given the "General" room is opened
    When enter "qwerty11" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty11" is present
    When tap on "qwerty11" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty11" is present
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    When enter "comment" in the "Add a message" input field
    When enter "Hul" in the "room name search" input field
    When tap on the "Hulk" room
    And tap on the "Apply select room" button
    Then the "Message" details screen is opened
    And tap on the Back button
    Then the chat history is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    Then message "qwerty11" is shared to the room
    Then message "comment" is present

  Scenario: 3.014 Check Share message in public room with a comment.
    Given the "General" room is opened
    When enter "qwerty12" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty12" is present
    When tap on "qwerty12" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty12" is present
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    When enter "comment" in the "Add a message" input field
    When enter "Captain" in the "room name search" input field
    When tap on the "CaptainAmerica" room
    And tap on the "Apply select room" button
    Then the "Message" details screen is opened
    And tap on the Back button
    Then the chat history is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "CaptainAmerica" room is presented in the left drawer
    And tap on the "CaptainAmerica" room
    Then the "CaptainAmerica" room is opened
    Then message "qwerty12" is shared to the room
    Then message "comment" is present

  Scenario: 3.015 Check "Edit message" function in public room.
    Given the "General" room is opened
    When enter "qwerty13" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty13" is present
    And tap on "qwerty13" message in chat history
    Then the "Message" details screen is opened
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When change message to "qwerty14" in the field "Message bar input"
    And tap on the "Message bar edit" button
    And wait while results are refreshed
    Then "edited a few seconds ago" alert is displayed

  Scenario: 3.016 Check "Edit message" function in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty15" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty15" is present
    And tap on "qwerty15" message in chat history
    Then the "Message" details screen is opened
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When change message to "qwerty16" in the field "Message bar input"
    And tap on the "Message bar edit" button
    And wait while results are refreshed
    Then "edited a few seconds ago" alert is displayed

  Scenario: 3.017 Check "Edit message" function in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty17" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty17" is present
    And tap on "qwerty17" message in chat history
    Then the "Message" details screen is opened
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When change message to "qwerty18" in the field "Message bar input"
    And tap on the "Message bar edit" button
    And wait while results are refreshed
    Then "edited a few seconds ago" alert is displayed

  Scenario: 3.018 Check that mark as "edited" is displayed in chat history in public room.
    Given the "General" room is opened
    When enter "qwerty19" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty19" is present
    And tap on "qwerty19" message in chat history
    Then the "Message" details screen is opened
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When change message to "qwerty20" in the field "Message bar input"
    And tap on the "Message bar edit" button
    And wait while results are refreshed
    Then "edited a few seconds ago" alert is displayed
    Given the "General" room is opened
    Then message "qwerty20 (edited)" is present
    Then "edited" alert is displayed

  Scenario: 3.019 Check that mark as "edited" is displayed in chat history in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty21" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty21" is present
    And tap on "qwerty21" message in chat history
    Then the "Message" details screen is opened
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When change message to "qwerty22" in the field "Message bar input"
    And tap on the "Message bar edit" button
    And wait while results are refreshed
    Then "edited a few seconds ago" alert is displayed
    When tap on the Back button
    Then the "Thor" room is opened
    Then the chat history is opened
    Then message "qwerty22 (edited)" is present
    Then "edited" alert is displayed

  Scenario: 3.020 Check that mark as "edited" is displayed in chat history in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty23" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty23" is present
    And tap on "qwerty23" message in chat history
    Then the "Message" details screen is opened
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When change message to "qwerty24" in the field "Message bar input"
    And tap on the "Message bar edit" button
    And wait while results are refreshed
    Then "edited a few seconds ago" alert is displayed
    When tap on the Back button
    Then the "a.baiova" direct room is opened
    Then message "qwerty24 (edited)" is present
    Then "edited" alert is displayed

  Scenario: 3.021 Check that mark as "pinned" message in "Message details screen" in public room.
    Given the "General" room is opened
    When enter "qwerty25" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty25" is present
    When tap on "qwerty25" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty25" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty25" message

  Scenario: 3.022 Check that mark as "pinned" message in "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty26" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty26" is present
    And tap on "qwerty26" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty26" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty26" message

  Scenario: 3.023 Check that mark as "pinned" message in "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty27" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty27" is present
    And tap on "qwerty27" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty27" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty27" message

  Scenario: 3.024 Check that mark as "pinned" is displayed in chat history in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty28" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty28" is present
    And tap on "qwerty28" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty28" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty28" message
    When tap on the Back button
    Then the "Thor" room is opened
    Then the chat history is opened
    Then message "qwerty28" is present
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty28" message

  Scenario: 3.025 Check that mark as "pinned" is displayed in chat history in public room.
    Given the "General" room is opened
    When enter "qwerty29" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty29" is present
    When tap on "qwerty29" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty29" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty29" message
    When tap on the Back button
    Then the "General" room is opened
    Then the chat history is opened
    Then message "qwerty29" is present
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty29" message

  Scenario: 3.026 Check that mark as "pinned" is displayed in chat history in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty30" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty30" is present
    And tap on "qwerty30" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty30" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty30" message
    When tap on the Back button
    Then the "a.baiova" direct room is opened
    Then the chat history is opened
    Then message "qwerty30" is present
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty30" message

  Scenario: 3.027 Check unpin message from "Message details screen" in public room.
    Given the "General" room is opened
    When enter "qwerty31" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty31" is present
    When tap on "qwerty31" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty31" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty31" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears

  Scenario: 3.028 Check unpin message from "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty32" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty32" is present
    And tap on "qwerty32" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty32" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty32" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears

  Scenario: 3.029 Check unpin message from "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty33" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty33" is present
    And tap on "qwerty33" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty33" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty33" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears

  Scenario: 3.030 Check unpin message from chat history in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When enter "qwerty34" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty34" is present
    And tap on "qwerty34" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty34" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty34" message
    When tap on the Back button
    Then the chat history is opened
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty34" message
    Then the "Message" details screen is opened
    And tap on "qwerty34" message in chat history
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty34" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears
    When tap on the Back button
    Then the chat history is opened
    Then message "qwerty34" is present
    Then mark as "pinned" disappears

  Scenario: 3.031 Check unpin message from chat history in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When enter "qwerty35" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty35" is present
    And tap on "qwerty35" message in chat history
    Then the "Message" details screen is opened
    Then message "qwert35" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty35" message
    When tap on the Back button
    Then the chat history is opened
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty35" message
    Then the "Message" details screen is opened
    And tap on "qwerty35" message in chat history
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty35" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears
    When tap on the Back button
    Then the chat history is opened
    Then message "qwerty35" is present
    Then mark as "pinned" disappears

  Scenario: 3.032 Check unpin message from chat history in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    When enter "qwerty36" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty36" is present
    And tap on "qwerty36" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty36" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty36" message
    When tap on the Back button
    Then the chat history is opened
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty36" message
    Then the "Message" details screen is opened
    And tap on "qwerty36" message in chat history
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty36" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears
    When tap on the Back button
    Then the chat history is opened
    Then message "qwerty36" is present
    Then mark as "pinned" disappears

  Scenario: 3.039 Check add reaction in "Message details screen" in public room.
    Given the "General" room is opened
    When enter "qwerty37" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty37" is present
    And tap on "qwerty37" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty17" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😀" "emoji_icon" reaction
    Then reaction "😀" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🚗" link
    When select "🚖" "emoji_icon" reaction
    Then reaction "🚖" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🇦🇨" link
    When select "🇧🇮" "emoji_icon" reaction
    Then reaction "🇧🇮" is added

  Scenario: 3.040 Check add reaction in "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty38" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty38" is present
    And tap on "qwerty38" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty38" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😀" "emoji_icon" reaction
    Then reaction "😀" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🚗" link
    When select "🚖" "emoji_icon" reaction
    Then reaction "🚖" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🇦🇨" link
    When select "🇧🇮" "emoji_icon" reaction
    Then reaction "🇧🇮" is added

  Scenario: 3.041 Check add reaction in "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty39" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty39" is present
    And tap on "qwerty39" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty39" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😀" "emoji_icon" reaction
    Then reaction "😀" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🚗" link
    When select "🚖" "emoji_icon" reaction
    Then reaction "🚖" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🇦🇨" link
    When select "🇧🇮" "emoji_icon" reaction
    Then reaction "🇧🇮" is added

  Scenario: 3.042 Check add "reaction" button near with any added emoji under the message in "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    Then message "qwerty39" is present
    And tap on "qwerty39" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty39" is present
    Then reaction "😀" is added
    Then reaction "🚖" is added
    Then reaction "🇧🇮" is added
    Then the reaction button is presented near "🇧🇮" added reaction
    When tap on the reaction button
    And wait while results are refreshed
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.043 Check add "reaction" button near with any added emoji under the message in "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    Then message "qwerty38" is present
    And tap on "qwerty38" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty38" is present
    Then reaction "😀" is added
    Then reaction "🚖" is added
    Then reaction "🇧🇮" is added
    Then the reaction button is presented near "🇧🇮" added reaction
    When tap on the reaction button
    And wait while results are refreshed
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.044 Check add "reaction" button near with any added emoji under the message in "Message details screen" in public room.
    Given the "General" room is opened
    Then message "qwerty37" is present
    And tap on "qwerty37" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty37" is present
    Then reaction "😀" is added
    Then reaction "🚖" is added
    Then reaction "🇧🇮" is added
    Then the reaction button is presented near "🇧🇮" added reaction
    When tap on the reaction button
    And wait while results are refreshed
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.045 Check delete "reaction" by tap on the any reactions in "Message details screen" in public room.
    Given the "General" room is opened
    Then message "qwerty37" is present
    And tap on "qwerty37" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty37" is present
    Then reaction "😇" is added
    When tap on the "😇" reaction
    Then reaction "😇" is deleted

  Scenario: 3.046 Check delete "reaction" by tap on the any reactions in "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    Then message "qwerty38" is present
    And tap on "qwerty38" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty38" is present
    Then reaction "😇" is added
    When tap on the "😇" reaction
    Then reaction "😇" is deleted

  Scenario: 3.047 Check delete "reaction" by tap on the any reactions in "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    Then message "qwerty39" is present
    And tap on "qwerty39" message in chat history
    Then the "Message" details screen is opened
    Then message "qwerty39" is present
    Then reaction "😇" is added
    When tap on the "😇" reaction
    Then reaction "😇" is deleted

  Scenario: 3.048 Check cancel deleting message from public room in "Message details screen".
    Given the "General" room is opened
    When enter "message delete" in the "Write a message" input field
    When tap on the "Send" button
    Then message "message delete" is present
    And tap on "message delete" message in chat history
    Then the "Message" details screen is opened
    Then message "message delete" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Cancel button in the pop-up menu
    Then the "Message" details screen is opened
    Then message "message delete" is present

  Scenario: 3.049 Check delete message from public room in "Message details screen".
    Given the "General" room is opened
    Then message "message delete" is present
    And tap on "message delete" message in chat history
    Then the "Message" details screen is opened
    Then message "message delete" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Delete button in the pop-up menu
    And wait while results are refreshed
    Then the chat history is opened
    Then the message "message delete" is deleted

  Scenario: 3.050 Check cancel deleting message from private room in "Message details screen".
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When enter "message delete" in the "Write a message" input field
    When tap on the "Send" button
    Then message "message delete" is present
    And tap on "message delete" message in chat history
    Then the "Message" details screen is opened
    Then message "message delete" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Cancel button in the pop-up menu
    Then the "Message" details screen is opened
    Then message "message delete" is present

  Scenario: 3.051 Check delete message from private room in "Message details screen".
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    Then message "message delete" is present
    And tap on "message delete" message in chat history
    Then the "Message" details screen is opened
    Then message "message delete" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Delete button in the pop-up menu
    Then the chat history is opened
    Then the message "message delete" is deleted

  Scenario: 3.052 Check cancel deleting message from direct room in "Message details screen".
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "message delete" in the "Write a message" input field
    When tap on the "Send" button
    Then message "message delete" is present
    And tap on "message delete" message in chat history
    Then the "Message" details screen is opened
    Then message "message delete" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Cancel button in the pop-up menu
    Then the "Message" details screen is opened
    Then message "message delete" is present

  Scenario: 3.053 Check delete message from direct room in "Message details screen".
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    Then message "message delete" is present
    And tap on "message delete" message in chat history
    Then the "Message" details screen is opened
    Then message "message delete" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Delete button in the pop-up menu
    Then the chat history is opened
    Then the message "message delete" is deleted

  Scenario: 3.054 Check for "starred" message in "Message details screen" for message of another user in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message" is present
    When tap on "test message" message in chat history
    Then the "Message" details screen is opened
    Then message "test message" is present
    When tap on the "Star sign" button
    Then message marked as "starred"
    Then message marked as "starred" between "testuser2" username and "test message" message

  Scenario: 3.055 Check for "starred" message in "Message details screen" for message of another user in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    Then message "test message" is present
    When tap on "test message" message in chat history
    Then the "Message" details screen is opened
    Then message "test message" is present
    When tap on the "Star sign" button
    Then message marked as "starred"
    Then message marked as "starred" between "testuser2" username and "test message" message

  Scenario: 3.056 Check for "starred" message in "Message details screen" for message of another user in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    Then message "test message" is present
    When tap on "test message" message in chat history
    Then the "Message" details screen is opened
    Then message "test message" is present
    When tap on the "Star sign" button
    Then message marked as "starred"
    Then message marked as "starred" between "testuser2" username and "test message" message

  Scenario: 3.057 Check "Share message" function for message by another user in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message 2" is present
    When tap on "test message 2" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 2" is present
    When tap on the "Star sign" button
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    When enter "Captain" in the "room name search" input field
    When tap on the "CaptainAmerica" room
    And tap on the "Apply select room" button
    Then the "Message" details screen is opened
    And tap on the Back button
    Then the chat history is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "CaptainAmerica" room is presented in the left drawer
    And tap on the "CaptainAmerica" room
    Then the "CaptainAmerica" room is opened
    Then message "test message 2" is shared to the room

  Scenario: 3.058 Check "Share message" function for message by another user in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    Then message "test message 2" is present
    When tap on "test message 2" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 2" is present
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    Then "This message can be forwarded only within this room" alert is displayed
    When tap on the "Apply select room" button
    Then the "Message" details screen is opened
    When tap on the Back button
    Then message "test message 2" is shared to the room

  Scenario: 3.059 Check "Share message" function for message by another user in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    Then message "test message 2" is present
    When tap on "test message 2" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 2" is present
    When tap on the "Share" button
    Then the "Message forward" screen is opened
    Then "This message can be forwarded only within this room" alert is displayed
    When tap on the "Apply select room" button
    Then the "Message" details screen is opened
    When tap on the Back button
    Then message "test message 2" is shared to the room

  Scenario: 3.060 Check than mark as "pinned" message in "Message details screen" in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "testuser2" username and "test message 3" message

  Scenario: 3.061 Check than mark as "pinned" message in "Message details screen" by another user in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "testuser2" username and "test message 3" message

  Scenario: 3.062 Check than mark as "pinned" message in "Message details screen" by another user in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "testuser2" username and "test message 3" message

  Scenario: 3.063 Check than mark as "pinned" message by another user in chat history in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message 3" is present
    Then message marked as "pinned"
    Then message marked as "pinned" between "testuser2" username and "test message 3" message

  Scenario: 3.064 Check than mark as "pinned" message in chat history in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    Then message "test message 3" is present
    Then message marked as "pinned"
    Then message marked as "pinned" between "testuser2" username and "test message 3" message

  Scenario: 3.065 Check than mark as "pinned" message in chat history in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    Then message "test message 3" is present
    Then message marked as "pinned"
    Then message marked as "pinned" between "testuser2" username and "test message 3" message

  Scenario: 3.066 Check unpin message from "Message details screen" in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    Then message marked as "pinned" between "testuser2" username and "test message 3" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears

  Scenario: 3.067 Check unpin message from "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    Then message marked as "pinned" between "testuser2" username and "test message 3" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears

  Scenario: 3.068 Check unpin message from "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    Then message marked as "pinned" between "testuser2" username and "test message 3" message
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Unpin message" link
    Then mark as "pinned" disappears

  Scenario: 3.072 Check add reaction in "Message details screen" in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😀" "emoji_icon" reaction
    Then reaction "😀" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🚗" link
    When select "🚖" "emoji_icon" reaction
    Then reaction "🚖" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🇦🇨" link
    When select "🇧🇮" "emoji_icon" reaction
    Then reaction "🇧🇮" is added

  Scenario: 3.073 Check add reaction in "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😀" "emoji_icon" reaction
    Then reaction "😀" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🚗" link
    When select "🚖" "emoji_icon" reaction
    Then reaction "🚖" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🇦🇨" link
    When select "🇧🇮" "emoji_icon" reaction
    Then reaction "🇧🇮" is added

  Scenario: 3.074 Check add reaction in "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😀" "emoji_icon" reaction
    Then reaction "😀" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🚗" link
    When select "🚖" "emoji_icon" reaction
    Then reaction "🚖" is added
    When tap on the More option button
    Then the pop-up menu is opened in the message details screen
    And tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When tap on the "🇦🇨" link
    When select "🇧🇮" "emoji_icon" reaction
    Then reaction "🇧🇮" is added

  Scenario: 3.075 Check add "reaction" button near with any added emoji under the message which send by another user in  "Message details screen" in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    Then reaction "😀" is added
    Then reaction "🚖" is added
    Then reaction "🇧🇮" is added
    Then the reaction button is presented near "🇧🇮" added reaction
    When tap on the reaction button
    And wait while results are refreshed
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.076 Check add "reaction" button near with any added emoji under the message which send by another user in  "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    Then reaction "😀" is added
    Then reaction "🚖" is added
    Then reaction "🇧🇮" is added
    Then the reaction button is presented near "🇧🇮" added reaction
    When tap on the reaction button
    And wait while results are refreshed
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.077 Check add "reaction" button near with any added emoji under the message which send by another user in "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    Then reaction "😀" is added
    Then reaction "🚖" is added
    Then reaction "🇧🇮" is added
    Then the reaction button is presented near "🇧🇮" added reaction
    When tap on the reaction button
    And wait while results are refreshed
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.078 Check delete "reaction" by tap on the any reactions in "Message details screen" in public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message" is present
    Then reaction "😇" is added
    When tap on the "😇" reaction
    Then reaction "😇" is deleted

  Scenario: 3.079 Check delete "reaction" by tap on the any reactions in "Message details screen" in private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    Then reaction "😇" is added
    When tap on the "😇" reaction
    Then reaction "😇" is deleted

  Scenario: 3.080 Check delete "reaction" by tap on the any reactions in "Message details screen" in direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    Then message "test message 3" is present
    When tap on "test message 3" message in chat history
    Then the "Message" details screen is opened
    Then message "test message 3" is present
    Then reaction "😇" is added
    When tap on the "😇" reaction
    Then reaction "😇" is deleted

  Scenario: 3.100 Check "Pin message" in a public room using a long tap in chat history.
    Given the "General" room is opened
    When enter "qwerty40" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty40" is present
    When long tap on "qwerty40" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    And wait while results are refreshed
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty40" message

  Scenario: 3.101 Check "Pin message" in a private room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty41" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty41" is present
    When long tap on "qwerty41" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty41" message

  Scenario: 3.102 Check "Pin message" in a direct room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty42" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty42" is present
    When long tap on "qwerty42" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty42" message

  Scenario: 3.103 Check "Unpin message" in a public room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "CaptainAmerica" room is presented in the left drawer
    And tap on the "CaptainAmerica" room
    Then the "CaptainAmerica" room is opened
    When enter "qwerty43" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty43" is present
    When long tap on "qwerty43" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty43" message
    When long tap on "qwerty43" message in chat history
    Then content pop-up menu is opened
    When tap on the "Unpin message" link
    Then mark as "pinned" disappears

  Scenario: 3.104 Check "Unpin message" in a private room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    When enter "qwerty44" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty44" is present
    When long tap on "qwerty44" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty44" message
    When long tap on "qwerty44" message in chat history
    Then content pop-up menu is opened
    When tap on the "Unpin message" link
    Then mark as "pinned" disappears

# Использовать другого пользователя
  Scenario: 3.105 Check "Unpin message" in a direct room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty45" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty45" is present
    When long tap on "qwerty45" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    Then message marked as "pinned"
    Then message marked as "pinned" between "d.sharaievskyi" username and "qwerty45" message
    When long tap on "qwerty45" message in chat history
    Then content pop-up menu is opened
    When tap on the "Unpin message" link
    Then mark as "pinned" disappears

  Scenario: 3.106 Check "Star message" in a public room using a long tap in chat history.
    Given the "General" room is opened
    When enter "qwerty46" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty46" is present
    When long tap on "qwerty46" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty46" message

  Scenario: 3.107 Check "Star message" in a private room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty47" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty47" is present
    When long tap on "qwerty47" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty47" message

  Scenario: 3.108 Check "Star message" in a direct room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty48" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty48" is present
    When long tap on "qwerty48" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty48" message

  Scenario: 3.109 Check "Unstar message" in a public room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When enter "qwerty49" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty49" is present
    When long tap on "qwerty49" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty49" message
    When long tap on "qwerty49" message in chat history
    Then content pop-up menu is opened
    When tap on the "Unstar message" link
    Then mark as "starred" disappears

  Scenario: 3.110 Check "Unstar message" in a private room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When enter "qwerty50" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty50" is present
    When long tap on "qwerty50" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty50" message
    When long tap on "qwerty50" message in chat history
    Then content pop-up menu is opened
    When tap on the "Unstar message" link
    Then mark as "starred" disappears

  Scenario: 3.111 Check "Unstar message" in a direct room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "testuser2" room is presented in the left drawer
    And tap on the "testuser2" room
    Then the "testuser2" direct room is opened
    When enter "qwerty51" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty51" is present
    When long tap on "qwerty51" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    And wait while results are refreshed
    Then message marked as "starred"
    Then message marked as "starred" between "d.sharaievskyi" username and "qwerty51" message
    When long tap on "qwerty51" message in chat history
    Then content pop-up menu is opened
    When tap on the "Unstar message" link
    Then mark as "starred" disappears

  Scenario: 3.112 Check cancel "Edit message" in a public room using a long tap in the chat history.
    Given the "General" room is opened
    When enter "qwerty52" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty52" is present
    When long tap on "qwerty52" message in chat history
    Then content pop-up menu is opened
    When tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When tap on the "Cancel edit" button
    Then the chat history is opened
    Then message "qwerty52" is present
    Then "edited" alert is not present

  Scenario: 3.113 Check "Edit message" in a public room using a long tap in chat history.
    Given the "General" room is opened
    When enter "qwerty53" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty53" is present
    When long tap on "qwerty53" message in chat history
    Then content pop-up menu is opened
    When tap on the "Edit message" link
    Then the "Edit message" screen is opened
    Then the "Edit message" screen is opened
    When change message to "qwerty54" in the field "Message bar input"
    And tap on the "Message bar edit" button
    Then message "qwerty54 (edited)" is present
    Then "edited" alert is displayed

  Scenario: 3.114 Check cancel "Edit message" in a private room using a long tap in the chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty55" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty55" is present
    When long tap on "qwerty55" message in chat history
    Then content pop-up menu is opened
    When tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When tap on the "Cancel edit" button
    Then the chat history is opened
    Then message "qwerty55" is present
    Then "edited" alert is not present

  Scenario: 3.115 Check "Edit message" in a private room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty56" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty56" is present
    When long tap on "qwerty56" message in chat history
    Then content pop-up menu is opened
    When tap on the "Edit message" link
    Then the "Edit message" screen is opened
    Then the "Edit message" screen is opened
    When change message to "qwerty56" in the field "Message bar input"
    And tap on the "Message bar edit" button
    Then message "qwerty56 (edited)" is present
    Then "edited" alert is displayed

  Scenario: 3.116 Check cancel "Edit message" in a direct room using a long tap in the chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty57" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty57" is present
    When long tap on "qwerty57" message in chat history
    Then content pop-up menu is opened
    When tap on the "Edit message" link
    Then the "Edit message" screen is opened
    When tap on the "Cancel edit" button
    Then the chat history is opened
    Then message "qwerty57" is present
    Then "edited" alert is not present

  Scenario: 3.117 Check "Edit message" in a direct room using a long tap in chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty58" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty58" is present
    When long tap on "qwerty58" message in chat history
    Then content pop-up menu is opened
    When tap on the "Edit message" link
    Then the "Edit message" screen is opened
    Then the "Edit message" screen is opened
    When change message to "qwerty59" in the field "Message bar input"
    And tap on the "Message bar edit" button
    Then message "qwerty59 (edited)" is present
    Then "edited" alert is displayed

  Scenario: 3.121 Check "Add reaction" button in a public room using a long tap in the chat history.
    Given the "General" room is opened
    When enter "qwerty66" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty66" is present
    When long tap on "qwerty66" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😝" "emoji_icon" reaction
    Then reaction "😝" is added

  Scenario: 3.122 Check "Add reaction" button in a private room using a long tap in the chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty67" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty67" is present
    When long tap on "qwerty67" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😝" "emoji_icon" reaction
    Then reaction "😝" is added

  Scenario: 3.123 Check "Add reaction" button in a direct room using a long tap in the chat history.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty68" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty68" is present
    When long tap on "qwerty68" message in chat history
    Then content pop-up menu is opened
    When tap on the "Add reaction" link
    Then the "Smile view" panel is present
    When select "😝" "emoji_icon" reaction
    Then reaction "😝" is added

  Scenario: 3.124 Check to add reaction button near with any added emoji under the message in chat history in the public room.
    Given the "General" room is opened
    Then message "qwerty66" is present
    Then reaction "😝" is added
    Then the reaction button is presented near "😝" added reaction
    When tap on the reaction button
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.125 Check to add reaction button near with any added emoji under the message in chat history in the private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    Then message "qwerty67" is present
    Then reaction "😝" is added
    Then the reaction button is presented near "😝" added reaction
    When tap on the reaction button
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.126 Check to add reaction button near with any added emoji under the message in chat history in the direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    Then message "qwerty68" is present
    Then reaction "😝" is added
    Then the reaction button is presented near "😝" added reaction
    When tap on the reaction button
    Then the "Smile view" panel is present
    When select "😇" "emoji_icon" reaction
    Then reaction "😇" is added

  Scenario: 3.127 Check the "Share message" function using long tap in a public room.
    Given the "General" room is opened
    When enter "qwerty69" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty69" is present
    When long tap on "qwerty69" message in chat history
    Then content pop-up menu is opened
    When tap on the "Forward" link
    Then the "Message forward" screen is opened
    When enter "comment" in the "Add a message" input field
    When enter "Captain" in the "Room name search" input field
    And tap on the "CaptainAmerica" room
    And tap on the "Apply select room" button
    Then the "CaptainAmerica" room is opened
    Then message "qwerty69" is shared to the room
    Then message "comment" is present

  Scenario: 3.128 Check the "Share message" function using long tap in a private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty70" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty70" is present
    When long tap on "qwerty70" message in chat history
    Then content pop-up menu is opened
    When tap on the "Forward" link
    Then the "Message forward" screen is opened
    Then "This message can be forwarded only within this room" alert is displayed
    When enter "comment" in the "Add a message" input field
    And tap on the "Apply select room" button
    Then the "Thor" room is opened
    Then message "qwerty70" is shared to the room
    Then message "comment" is present

  Scenario: 3.129 Check the "Share message" function using long tap in a direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty71" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty71" is present
    When long tap on "qwerty71" message in chat history
    Then content pop-up menu is opened
    When tap on the "Forward" link
    Then the "Message forward" screen is opened
    Then "This message can be forwarded only within this room" alert is displayed
    When enter "comment" in the "Add a message" input field
    And tap on the "Apply select room" button
    Then the "a.baiova" direct room is opened
    Then message "qwerty71" is shared to the room
    Then message "comment" is present

  Scenario: 3.130 Check the "Share message" function using long tap from the public room to the private room.
    Given the "General" room is opened
    When enter "qwerty72" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty72" is present
    When long tap on "qwerty72" message in chat history
    Then content pop-up menu is opened
    When tap on the "Forward" link
    Then the "Message forward" screen is opened
    When enter "comment" in the "Add a message" input field
    When enter "Tho" in the "Room name search" input field
    And tap on the "Thor" room
    And tap on the "Apply select room" button
    Then the "Thor" room is opened
    Then message "qwerty72" is shared to the room
    Then message "comment" is present

  Scenario: 3.131 Check the "Share message" function using long tap from the public room to the direct room.
    Given the "General" room is opened
    When enter "qwerty73" in the "Write a message" input field
    When tap on the "Send" button
     Then message "qwerty73" is present
    When long tap on "qwerty73" message in chat history
    Then content pop-up menu is opened
    When tap on the "Forward" link
    Then the "Message forward" screen is opened
    When enter "comment" in the "Add a message" input field
    When enter "a.baiov" in the "Room name search" input field
    And tap on the "a.baiova" room
    And tap on the "Apply select room" button
    Then the "a.baiova" direct room is opened
    Then message "qwerty73" is shared to the room
    Then message "comment" is present

  Scenario: 3.132 Check cancel "Delete" using long tap in chat history in a public room.
    Given the "General" room is opened
    When enter "qwerty74" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty74" is present
    When long tap on "qwerty74" message in chat history
    Then content pop-up menu is opened
    When tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Cancel button in the pop-up menu
    Then the chat history is opened
    Then message "qwerty74" is present

  Scenario: 3.133 Check "Delete" using long tap in chat history in a public room.
    Given the "General" room is opened
    When enter "qwerty75" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty75" is present
    When long tap on "qwerty75" message in chat history
    Then content pop-up menu is opened
    When tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Delete button in the pop-up menu
    And wait while results are refreshed
    Then the message "qwerty75" is deleted

  Scenario: 3.134 Check cancel "Delete" using long tap in chat history in a private room
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty76" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty76" is present
    When long tap on "qwerty76" message in chat history
    Then content pop-up menu is opened
    When tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Cancel button in the pop-up menu
    Then the chat history is opened
    Then message "qwerty76" is present

  Scenario: 3.135 Check "Delete" using long tap in chat history in a private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty77" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty77" is present
    When long tap on "qwerty77" message in chat history
    Then content pop-up menu is opened
    When tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Delete button in the pop-up menu
    And wait while results are refreshed
    Then the message "qwerty77" is deleted

  Scenario: 3.136 Check cancel "Delete" using long tap in chat history in a direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty78" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty78" is present
    When long tap on "qwerty78" message in chat history
    Then content pop-up menu is opened
    When tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Cancel button in the pop-up menu
    Then the chat history is opened
    Then message "qwerty78" is present

  Scenario: 3.137 Check "Delete" using long tap in chat history in a direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When enter "qwerty79" in the "Write a message" input field
    When tap on the "Send" button
    Then message "qwerty79" is present
    When long tap on "qwerty79" message in chat history
    Then content pop-up menu is opened
    When tap on the "Delete" link
    Then the "Are you sure you want to delete this message? This cannot be undone." pop-up menu is present
    When tap on the Delete button in the pop-up menu
    And wait while results are refreshed
    Then the message "qwerty79" is deleted