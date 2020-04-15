Feature: Right drawer

  Scenario: 4.000 Precondition
    // Hide conversation all users
    // Add the next users: androidQA2 and testuser2

  Scenario: 4.001 Check transition by a tap on the "three-dots" button on the top right corner in the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened

  Scenario: 4.002 Check transition by a tap on the "three-dots" button on the top right corner in the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened

  Scenario: 4.003 Check transition by a tap on the "three-dots" button on the top right corner in the direct room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened

  Scenario: 4.004 Check "mute" public room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.007 Check to unmute public room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "CaptainAmerica" and "Hulk" rooms

  Scenario: 4.005 Check "mute" private room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.008 Check to unmute private room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "General" and "IronMan" rooms

  Scenario: 4.006 Check "mute" direct room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "androidQA2" is presented under the "testuser2" room in the "RECENT DIRECTS" section

  Scenario: 4.009 Check to unmute direct room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    Then the room "androidQA2" is between "RECENT DIRECTS" section and "testuser2" room

  Scenario: 4.010 Check "star" public room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the "Favorites" title is present
    Then the room "General" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.013 Check  unstar public room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the "FAVORITES" title is not present
    Then the room "General" is between "ROOMS" and "RECENT DIRECTS" sections

  Scenario: 4.011 Check "star" private room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.014 Check unstar private room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then the "FAVORITES" title is not present
    Then the room "Hulk" is between "ROOMS" and "RECENT DIRECTS" sections

  Scenario: 4.012 Check "star" direct room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "androidQA2" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.015 Check  unstar direct room through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    And swipe from left to right
    Then the "FAVORITES" title is not present
    Then the room "androidQA2" is presented in the "RECENT DIRECTS" section

  Scenario: 4.016 Check for clickable "Room members" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened

  Scenario: 4.017 Check search in the "Room members" input field.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And enter "androidQA2" in the "Search user name" input field
    Then the "androidQA2" room appears in the Room members search result

  Scenario: 4.018 Check for the open direct user through the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And enter "android" in the "Search user name" input field
    And tap on the "androidQA2" room
    And tap on the "Dialog button" button
    Then the "androidQA2" direct room is opened
    When enter "test message, optional response" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message, optional response" sent

  Scenario: 4.019 Check for clickable "Back" button in the "Room members" list.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And tap on the Back button
    Then the "General" room is opened

  Scenario: 4.020 Check for clickable "Pinned messages" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected

  Scenario: 4.021 Checking the clickability of tab "Messages" in "Pinned messages" block.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the Messages tab
    Then the Messages tab is selected

  Scenario: 4.022 Checking the clickability of tab "Files" in "Pinned messages" block.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the "Files" tab
    Then the "Files" tab is selected
    
  Scenario: 4.023 Check for clickable "Back" button in the "Pinned messages" block.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.024 Check transition to pinned message in chat history for public room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When enter "qwerty75" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty75" sent
    When long tap on "qwerty75" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    And wait while results are refreshed
    Then message marked as "pinned"
    Then message marked as "pinned" between "androidQA1" username and "qwerty75" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty76" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty76" sent
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty75" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty75" message
    When tap on the "qwerty75" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty75" is open in chat history
    Then message "qwerty75" marked as "pinned"

  Scenario: 4.025 Check transition to pinned message in chat history for private room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty77" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty77" sent
    When long tap on "qwerty77" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    And wait while results are refreshed
    Then message marked as "pinned"
    Then message marked as "pinned" between "androidQA1" username and "qwerty77" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty78" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty78" sent
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty77" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty77" message
    When tap on the "qwerty77" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty77" is open in chat history
    Then message "qwerty77" marked as "pinned"

  Scenario: 4.026 Check transition to pinned message in chat history for direct room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When enter "qwerty78" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty78" sent
    When long tap on "qwerty78" message in chat history
    Then content pop-up menu is opened
    When tap on the "Pin message" link
    And wait while results are refreshed
    Then message marked as "pinned"
    Then message marked as "pinned" between "androidQA1" username and "qwerty78" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty79" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty79" sent
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty78" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty78" message
    When tap on the "qwerty78" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty78" is open in chat history
    Then message "qwerty78" marked as "pinned"

  Scenario: 4.027 Check transition to pinned message in chat history for public room by click on the message in "Messages" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty75" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty75" message
    When tap on the "qwerty75" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty75" is open in chat history
    Then message "qwerty75" marked as "pinned"

  Scenario: 4.028 Check transition to pinned message in chat history for private room by click on the message in "Messages" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty77" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty77" message
    When tap on the "qwerty77" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty77" is open in chat history
    Then message "qwerty77" marked as "pinned"

  Scenario: 4.029 Check transition to pinned message in chat history for direct room by click on the message in "Messages" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty78" is present
    Then message marked as "pinned" between "androidQA1" username and "qwerty78" message
    When tap on the "qwerty78" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty78" is open in chat history
    Then message "qwerty78" marked as "pinned"


#  Scenario: 4.030 Check transition to pinned message in chat history for public room by click on the message in "Files" tab.
#    When swipe from right to left
#    When tap on the "Pinned messages" list
#    Then the "Pinned messages" screen is opened
#    Then the "All" tab is selected
#    When tap on the "Files" tab
#    Then the "Files" tab is selected
#    When tap on the "" pinned message
#    And wait while results are refreshed
#    Then the pinned message "" is open in chat history

#  Scenario: 4.031 Check transition to pinned message in chat history for private room by click on the message in "Files" tab.
#    When swipe from left to right
#    And tap on the "SharePrivateRoom" room
#    Then the "SharePrivateRoom" room is opened
#    When swipe from right to left
#    When tap on the "Pinned messages" list
#    Then the "Pinned messages" screen is opened
#    Then the "All" tab is selected
#    When tap on the "Files" tab
#    Then the "Files" tab is selected
#    When tap on the "" pinned message
#    And wait while results are refreshed
#    Then the pinned message "" is open in chat history

#  Scenario: 4.032 Check transition to pinned message in chat history for direct room by click on the message in "Files" tab.
#    When swipe from left to right
#    And tap on the "testuser1" room
#    Then the "testuser1" direct room is opened
#    When swipe from right to left
#    When tap on the "Pinned messages" list
#    Then the "Pinned messages" screen is opened
#    Then the "All" tab is selected
#    When tap on the "Files" tab
#    Then the "Files" tab is selected
#    When tap on the "" pinned message
#    And wait while results are refreshed
#    Then the pinned message "" is open in chat history


  Scenario: 4.033 Check for clickable "Starred messages" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected

  Scenario: 4.034 Check transition to starred message in chat history for public room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When enter "qwerty80" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty80" sent
    When long tap on "qwerty80" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    And wait while results are refreshed
    Then message marked as "starred"
    Then message marked as "starred" between "androidQA1" username and "qwerty80" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty81" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty81" sent
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty80" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty80" message
    When tap on the "qwerty80" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty80" is open in chat history
    Then message "qwerty80" marked as "starred"

  Scenario: 4.035 Check transition to starred message in chat history for private room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When enter "qwerty82" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty82" sent
    When long tap on "qwerty82" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    And wait while results are refreshed
    Then message marked as "starred"
    Then message marked as "starred" between "androidQA1" username and "qwerty82" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty83" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty83" sent
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty82" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty82" message
    When tap on the "qwerty82" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty82" is open in chat history
    Then message "qwerty82" marked as "starred"

  Scenario: 4.036 Check transition to starred message in chat history for direct room by click on the message in "All" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When enter "qwerty84" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty84" sent
    When long tap on "qwerty84" message in chat history
    Then content pop-up menu is opened
    When tap on the "Star message" link
    And wait while results are refreshed
    Then message marked as "starred"
    Then message marked as "starred" between "androidQA1" username and "qwerty84" message
    When enter "fsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdfghjsghsfhghfsgsdfsdfafgadnfsjfjfgjhsdf" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    When enter "qwerty85" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "qwerty85" sent
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    Then message "qwerty84" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty84" message
    When tap on the "qwerty84" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty84" is open in chat history
    Then message "qwerty84" marked as "starred"

  Scenario: 4.037 Check transition to starred message in chat history for public room by click on the message in "Messages" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty80" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty80" message
    When tap on the "qwerty80" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty80" is open in chat history
    Then message "qwerty80" marked as "starred"

  Scenario: 4.038 Check transition to starred message in chat history for private room by click on the message in "Message" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty82" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty82" message
    When tap on the "qwerty82" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty82" is open in chat history
    Then message "qwerty82" marked as "starred"

  Scenario: 4.039 Check transition to starred message in chat history foe direct room by click on the message in "Message" tab.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    Then message "qwerty84" is present
    Then message marked as "starred" between "androidQA1" username and "qwerty84" message
    When tap on the "qwerty84" pinned message
    And wait while results are refreshed
    Then the pinned message "qwerty84" is open in chat history
    Then message "qwerty84" marked as "starred"
#    **********************************************************************************************************



#  Scenario: 4.040 Check transition to starred message in chat history for public room by click on the file in the "Files" tab.
#    When swipe from right to left
#    When tap on the "Starred messages" list
#    Then the "Starred messages" screen is opened
#    Then the "All" tab is selected
#    When tap on the "Files" tab
#    Then the "Files" tab is selected
#    When tap on the "" pinned message
#    And wait while results are refreshed
#    Then the pinned message "" is open in chat history

#  Scenario: 4.041 Check transition to starred message in chat history for private room by click on the message in "Files" tab.
#    When swipe from left to right
#    And tap on the "SharePrivateRoom" room
#    Then the "SharePrivateRoom" room is opened
#    When swipe from right to left
#    When tap on the "Starred messages" list
#    Then the "Starred messages" screen is opened
#    Then the "All" tab is selected
#    When tap on the "Files" tab
#    Then the "Files" tab is selected
#    When tap on the "" pinned message
#    And wait while results are refreshed
#    Then the pinned message "" is open in chat history

#  Scenario: 4.042 Check transition to pinned message in chat history for direct room by click on the message in "Files" tab.
#    When swipe from left to right
#    And tap on the "testuser1" room
#    Then the "testuser1" direct room is opened
#    When swipe from right to left
#    When tap on the "Starred messages" list
#    Then the "Starred messages" screen is opened
#    Then the "All" tab is selected
#    When tap on the "Files" tab
#    Then the "Files" tab is selected
#    When tap on the "" pinned message
#    And wait while results are refreshed
#    Then the pinned message "" is open in chat history

  Scenario: 4.043 Check for clickable "Back" button in the "Starred messages" list.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Starred messages" link in the Right drawer
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.044 Check for clickable "Uploaded files" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Uploaded files" link in the Right drawer
    Then the "Uploaded files" screen is opened

#  Scenario: 4.045 Check transition to uploaded files in chat history for public room by click on the files in the "By all members" tab.
#    When swipe from right to left
#    When tap on the "Uploaded files" list
#    Then the "Uploaded files" screen is opened
#    Then the "By all members" tab is selected
#    When tap on the "" uploaded file
#    And wait while results are refreshed
#    Then the uploaded file "" is open in chat history

#  Scenario: 4.046 Check transition to uploaded files in chat history for private room by click on the files in the "By all members" tab.
#    When swipe from left to right
#    And tap on the "SharePrivateRoom" room
#    Then the "SharePrivateRoom" room is opened
#    When swipe from right to left
#    When tap on the "Uploaded files" list
#    Then the "Uploaded files" screen is opened
#    Then the "By all members" tab is selected
#    When tap on the "" uploaded file
#    And wait while results are refreshed
#    Then the uploaded file "" is open in chat history

#  Scenario: 4.047 Check transition to uploaded files in chat history for direct room by click on the files in the "By all members" tab.
#    When swipe from left to right
#    And tap on the "testuser1" room
#    Then the "testuser1" direct room is opened
#    When swipe from right to left
#    When tap on the "Uploaded files" list
#    Then the "Uploaded files" screen is opened
#    Then the "By all members" tab is selected
#    When tap on the "" uploaded file
#    And wait while results are refreshed
#    Then the uploaded file "" is open in chat history

#  Scenario: 4.048 Check transition to uploaded files in chat history for public room by click on the files in the "By me" tab.
#    When swipe from right to left
#    When tap on the "Uploaded files" list
#    Then the "Uploaded files" screen is opened
#    Then the "By all members" tab is selected
#    When tap on the "By me" tab
#    Then the "By me" tab is selected
#    When tap on the "" uploaded file
#    And wait while results are refreshed
#    Then the uploaded file "" is open in chat history

#  Scenario: 4.049 Check transition to uploaded files in chat history for private room by click on the files in the "By me" tab.
#    When swipe from left to right
#    And tap on the "SharePrivateRoom" room
#    Then the "SharePrivateRoom" room is opened
#    When swipe from right to left
#    When tap on the "Uploaded files" list
#    Then the "Uploaded files" screen is opened
#    Then the "By all members" tab is selected
#    When tap on the "By me" tab
#    Then the "By me" tab is selected
#    When tap on the "" uploaded file
#    And wait while results are refreshed
#    Then the uploaded file "" is open in chat history

#  Scenario: 4.050 Check transition to uploaded files in chat history for direct room by click on the files in the "By me" tab.
#    When swipe from left to right
#    And tap on the "testuser1" room
#    Then the "testuser1" direct room is opened
#    When swipe from right to left
#    When tap on the "Uploaded files" list
#    Then the "Uploaded files" screen is opened
#    Then the "By all members" tab is selected
#    When tap on the "By me" tab
#    Then the "By me" tab is selected
#    When tap on the "" uploaded file
#    And wait while results are refreshed
#    Then the uploaded file "" is open in chat history

  Scenario: 4.051 Check for clickable "Back" button in the "Uploaded files" list.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Uploaded files" link in the Right drawer
    Then the "Uploaded files" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.052 Check for clickable "Room settings" list in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened

  Scenario: 4.053 Check "mute room" function for a public room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.063 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "General" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.059 Check "unmuted room" function for a public room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "CaptainAmerica" and "Hulk" rooms

  Scenario: 4.054 Check "mute room" function for a private room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "Hulk" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.064 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the private room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "Hulk" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.060 Check "unmuted room" function for a private room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "Hulk" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "General" and "IronMan" rooms

  Scenario: 4.055 Check "mute room" function for a direct room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "Direct settings" link in the Right drawer
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "androidQA2" direct room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "androidQA2" is presented under the "testuser2" room in the "RECENT DIRECTS" section

  Scenario: 4.065 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "Direct settings" link in the Right drawer
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "androidQA2" direct room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "androidQA2" is presented under the "testuser2" room in the "RECENT DIRECTS" section

  Scenario: 4.061 Check "unmuted room" function for a direct room on the "Room settings" in the right panel.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "Direct settings" link in the Right drawer
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "androidQA2" direct room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "androidQA2" is between "RECENT DIRECTS" section and "testuser2" room

  Scenario: 4.062 Check for clickable "Back" button in the "Room settings" list.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.078 Check "Leave room" function for public room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the "Alfresco" room
    Then the "Alfresco" room is opened
    When tap on the "Join" button
    And wait while results are refreshed
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    Then "You left public room #Alfresco" alert is displayed
    When tap on the "Ok" link
    Then the "General" room is opened

  Scenario: 4.079 Check "Leave room" function for private room.
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "androidQA2" in the "Login" input field
    When enter "qwerty123" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And tap on the "Private room" title
    And enter "HumanTorch" in the "Create room name" input field
    And enter "Johnny Storm" in the "Create room description" input field
    And tap on the "Add members" button
    Then the "Invite members" screen is opened
    And enter "androidQA1" in the "search user name" input field
    And tap on the "androidQA1" "username"
    And tap on the "Apply select users" button
    And tap on the "Apply create room" button
    Then the "HumanTorch" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Aimprosoft" link
    Then pop-up menu is opened in the Left drawer
    When tap on the "Sign out" link
    Then the "Sign in to Aimprosoft" screen is opened
    When tap on the "Back" button
    Then the "Sign in to your Team" screen is opened
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "HumanTorch" room is presented in the left drawer
    And tap on the "HumanTorch" room
    Then the "HumanTorch" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room settings" link in the Right drawer
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    And wait while results are refreshed
    When tap on the "Ok" link
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 4.080 Check "Hide conversation" function for direct room.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Recent directs" title
    Then the "Start direct" screen is opened
    When tap on the "a.antonenko" room
    Then the "a.antonenko" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "Direct settings" link in the Right drawer
    Then the "Direct settings" screen is opened
    When tap on the "Hide conversation" link
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.antonenko" room is not presented in the left drawer

  Scenario: 4.081 Checking adds users in the public room as the owner through the right drawer.
    Given login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "testuser" in the "Search user name" input field
    And tap on the "testuser1" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    And wait while results are refreshed
    Then the "Room members" screen is opened
    Then the "testuser1" user appear in the Room members screen

#  Scenario: 4.083 Check change admin rights to another participant in the public room as the an owner.
#    Given login using the properties file
#    Then the user is logged in
#    Then the "General" room is opened
#    When swipe from left to right
#    And tap on the "CaptainAmerica" room
#    Then the "CaptainAmerica" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    When tap on the "More action" button
#    And tap on the "Assign as administrator" link
#    Then the "Room members" screen is opened
#    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
#    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#    Подставить тестового юзера, чтобы можно было удалить комнату после
#  Scenario: 4.082 Check change owner's rights to other participant in the public room as the an owner.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "qwdqyd" room
#    Then the "qwdqyd" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    When tap on the "More action" button
#    And tap on the "Reassign owner’s rights" link
#    Then the "a.baiova" user is presented between "Administration" section and "d.sharaievskyi" user
#    Then the "(owner)" role is presented between "a.baiova" username and "Anna Baiova" user full name


#  Scenario: 4.084 Checking remove any user from the public room as an owner.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "IronMan" room
#    Then the "IronMan" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    Then the "testuser1" user appear in the Room members screen
#    When tap on the "More action" button
#    And tap on the "Remove from IronMan" link
#    And wait while results are refreshed
#    Then the "testuser1" user disappear in the Room members screen

# ------- Создать паблик руму (быть owner-ом) -----------/////Чекнуть\\\\\-----
#  Scenario: 4.085 Checking adds users in the public room as the admin through the right drawer.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "TestAddUsers" room
#    Then the "TestAddUsers" room is opened
#    When swipe from right to left
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    And tap on the "Add members" button
#    And wait while results are refreshed
#    And enter "testuser" in the "Select users" input field
#    And tap on the "testuser2" link
#    And tap on the "Apply select users" button
#    And wait while results are refreshed
#    When swipe from right to left
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    Then the "testuser2" user appear in the Room members screen

#    Сделать прекондишен и изменить номер проверки
#  Scenario: 4.0 Check assign admin rights for other participants.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "qwdqyd" room
#    Then the "qwdqyd" room is opened
#    When swipe from right to left
#    When tap on the "Room members (2)" list
#    Then the "Room members" screen is opened
#    When tap on the "More action" button
#    And tap on the "Assign as administrator" link
#    Then the "Room members" screen is opened
##     Узнать должно апдейтиться динамически или только после перехода в другую руму и обратно?
#    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
#    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#    ------ Прекондишен ----------
#  Scenario: 4.086 Checking remove any user from the public room as an admin.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "TestAddUsers" room
#    Then the "TestAddUsers" room is opened
#    When swipe from right to left
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    Then the "a.baiova" user appear in the Room members screen
#    When tap on the "More action" button
#    And tap on the "Remove from " link
#    And wait while results are refreshed
#    Then the "a.baiova" user disappear in the Room members screen

#  Scenario: 4.087 Checking adds users in the private room as the owner through the right drawer.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "Hulk" room
#    Then the "Hulk" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    And tap on the "Add members" button
#    And wait while results are refreshed
#    And enter "testuser" in the "Search user name" input field
#    And tap on the "testuser1" link
#    And tap on the "Apply select users" button
#    And wait while results are refreshed
#    And wait while results are refreshed
#    Then the "Room members" screen is opened
#    Then the "testuser1" user appear in the Room members screen

#Сделать прекондишен, вписать название румы
#  Scenario: 4.089 Check assign admin rights to another member in the private room as the owner.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "" room
#    Then the "" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    When tap on the "More action" button
#    And tap on the "Assign as administrator" link
#    Then the "Room members" screen is opened
#    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
#    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#  Scenario: 4.088 Check change owner's rights to the other members in the private room as the owner.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "PrivateTestAddUsers" room
#    Then the "PrivateTestAddUsers" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    When tap on the "More action" button
#    And tap on the "Reassign owner’s rights" link
#    Then the "a.baiova" user is presented between "Administration" section and "d.sharaievskyi" user
#    Then the "(owner)" role is presented between "a.baiova" username and "Anna Baiova" user full name


#  Scenario: 4.090 Checking remove any user from the private room as an owner.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "Hulk" room
#    Then the "Hulk" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    Then the "testuser1" user appear in the Room members screen
#    When tap on the "More action" button
#    And tap on the "Remove from Hulk" link
#    And wait while results are refreshed
#    Then the "testuser1" user disappear in the Room members screen

#    ------ Прекондишен ----------
#  Scenario: 4.091 Checking adds users in the private room as the admin through the right drawer.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "PrivateTestAddUsers" room
#    Then the "PrivateTestAddUsers" room is opened
#    When swipe from right to left
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    And tap on the "Add members" button
#    And wait while results are refreshed
#    And enter "testuser2" in the "Select users" input field
#    And tap on the "testuser2" link
#    And tap on the "Apply select users" button
#    And wait while results are refreshed
#    When swipe from right to left
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    Then the "testuser2" user appear in the Room members screen

#  Scenario: 4.092 Check assign admin rights to another participant in the private room as the owner.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "qwdqyd" room
#    Then the "qwdqyd" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    When tap on the "More action" button
#    And tap on the "Assign as administrator" link
#    Then the "Room members" screen is opened
#    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
#    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name
#
##    ------ Прекондишен ----------
#  Scenario: 4.093 Checking remove any user from the private room as an admin.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "PrivateTestAddUsers" room
#    Then the "PrivateTestAddUsers" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room members" link in the Right drawer
#    Then the "Room members" screen is opened
#    Then the "a.baiova" user appear in the Room members screen
#    When tap on the "More action" button
#    And tap on the "Remove from " link
#    And wait while results are refreshed
#    Then the "a.baiova" user disappear in the Room members screen
#
##    ------ Прекондишен ----------
#  Scenario: 4.094 Check "Edit room" function for the public room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPublicRoom" room
#    Then the "MyPublicRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Edit room" link
#    Then the "Edit room" screen is opened
#    When change room name to "MyChangeRoomName" in the field "Edit room name"
#    And tap on the "Apply edit" button
#    And wait while results are refreshed
#    Then name "MyChangeRoomName" of room is present
#    When tap on the Back button
#    Then the "Room settings" screen is opened
#    When tap on the Back button
#    Then the "MyChangeRoomName" room is opened
#
##    ------ Прекондишен ----------
#  Scenario: 4.095 Checking change description of the room in the "Edit room" screen.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPublicRoom" room
#    Then the "MyPublicRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Edit room" link
#    Then the "Edit room" screen is opened
#    When change description to "MyChangeRoomName" in the field "Edit room name"
#    And tap on the "Apply edit" button
#    And wait while results are refreshed
#    Then description "MyChangeRoomName" of room is present
#
##    ------ Прекондишен ----------
#  Scenario: 4.096 Check delete members from "Edit list of members" in the "Edit Room" screen for public room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPublicRoom" room
#    Then the "MyPublicRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Edit room" link
#    Then the "Edit room" screen is opened
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    Then the "a.baiova" user appear in the Room members screen
#    When tap on the "More action" button
#    And tap on the "Remove from " link
#    And wait while results are refreshed
#    Then the "a.baiova" user disappear in the Room members screen
#
#  Scenario: 4.097 Check invite members in the "Edit list of members" in the "Edit Room" screen for public room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPublicRoom" room
#    Then the "MyPublicRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Edit room" link
#    Then the "Edit room" screen is opened
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    And tap on the "Add members" button
#    And wait while results are refreshed
#    And enter "testuser2" in the "Select users" input field
#    And tap on the "testuser2" link
#    And tap on the "Apply select users" button
#    And wait while results are refreshed
#    When swipe from right to left
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    Then the "testuser2" user appear in the Room members screen
#
#  Scenario: 4.098 Checking assign admin rights.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPublicRoom" room
#    Then the "MyPublicRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Edit room" link
#    Then the "Edit room" screen is opened
#    When tap on the "Room members" list
#    Then the "Room members" screen is opened
#    When tap on the "More action" button
#    And tap on the "Assign as administrator" link
#    Then the "Room members" screen is opened
##     Узнать должно апдейтиться динамически или только после перехода в другую руму и обратно?
#    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
#    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name
#
##    *********** Поменять местами проверки *****************
#  Scenario: 4.099 Check "Delete room" function for public room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPublicRoom" room
#    Then the "MyPublicRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Delete room" link
#    And wait while results are refreshed
#    When tap on the "Accept" button
#    And wait while results are refreshed
#    Then "The public room #MyPublicRoom has been deleted" alert is displayed
#    When tap on the "Ok button" button
#    And wait while results are refreshed
#    Then the "General" room is opened
#
#  Scenario: 4.100 Check cancel delete room for public room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPublicRoom" room
#    Then the "MyPublicRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Delete room" link
#    And wait while results are refreshed
#    When tap on the "Cancel" button
#    Then the "Room settings" screen is opened
#    When tap on the Back button
#    Then the "MyPublicRoom" room is opened
##    ********************************************************
#
##    *********** Поменять местами проверки *****************
#  Scenario: 4.101 Check "Delete room" function for private room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPrivateRoom" room
#    Then the "MyPrivateRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Delete room" link
#    And wait while results are refreshed
#    When tap on the "Accept" button
#    And wait while results are refreshed
#    Then "The private room #MyPrivateRoom has been deleted" alert is displayed
#    When tap on the "Ok button" button
#    And wait while results are refreshed
#    Then the "General" room is opened
#
#  Scenario: 4.102 Check cancel delete room for public room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPrivateRoom" room
#    Then the "MyPrivateRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "Delete room" link
#    And wait while results are refreshed
#    When tap on the "Cancel" button
#    Then the "Room settings" screen is opened
#    When tap on the Back button
#    Then the "MyPrivateRoom" room is opened
##    *******************************************************
#
##  ********** Прекондишен ************************
#  Scenario: 4.103 Check the "reassign new owner" function for the public room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPublicRoom" room
#    Then the "MyPublicRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "reassign new owner" link
#    Then the "Room members" screen is opened
#    When tap on the More option button
#    When tap on the "Reassign owner’s rights" link
#    And tap on the Back button
#    When tap on the "Leave room" link
#    Then "You left public room #MyPublicRoom" alert is displayed
#    When tap on the "Ok button" button
#    And wait while results are refreshed
#    Then the "General" room is opened
#
##  ********** Прекондишен ************************
#  Scenario: 4.104 Check the "reassign new owner" function for the private room.
#    Given the "General" room is opened
#    When swipe from left to right
#    And tap on the "MyPrivateRoom" room
#    Then the "MyPrivateRoom" room is opened
#    When swipe from right to left
#    Then the "Room info" screen is opened
#    When tap on the "Room settings" link in the Right drawer
#    Then the "Room settings" screen is opened
#    When tap on the "reassign new owner" link
#    Then the "Room members" screen is opened
#    When tap on the More option button
#    When tap on the "Reassign owner’s rights" link
#    And tap on the Back button
#    When tap on the "Leave room" link
#    Then "You left public room #MyPrivateRoom" alert is displayed
#    When tap on the "Ok button" button
#    And wait while results are refreshed
#    Then the "General" room is opened