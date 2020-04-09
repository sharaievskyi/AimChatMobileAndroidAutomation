Feature: Right drawer

  Background: Login to chat
    When login using the properties file
    Then the user is logged in

  Scenario: 4.000 Precondition
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When tap on "" message in chat history


  Scenario: 4.001 Check transition by a tap on the "three-dots" button on the top right corner in the public room.
    Given the "General" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened

  Scenario: 4.002 Check transition by a tap on the "three-dots" button on the top right corner in the private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Thor" room is presented in the left drawer
    And tap on the "Thor" room
    Then the "Thor" room is opened
    When tap on the "three dots" button
    Then the "Room info" screen is opened

  Scenario: 4.003 Check transition by a tap on the "three-dots" button on the top right corner in the direct room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When tap on the "three dots" button
    Then the "Direct info" screen is opened

  Scenario: 4.004 Check "mute" public room through the right panel.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.007 Check to unmute public room through the right panel.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "CaptainAmerica" and "Hulk" rooms

  Scenario: 4.005 Check "mute" private room through the right panel.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 4.008 Check to unmute private room through the right panel.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "General" and "IronMan" rooms

  Scenario: 4.006 Check "mute" direct room through the right panel.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "a.baiova" is presented under the "testuser2" room in the "RECENT DIRECTS" section

  Scenario: 4.009 Check to unmute direct room through the right panel.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "mute room" button
    And swipe from left to right
    And swipe from left to right
    Then the room "a.baiova" is between "RECENT DIRECTS" section and "testuser2" room

  Scenario: 4.010 Check "star" public room through the right panel.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the "Favorites" title is present
    Then the room "General" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.013 Check  unstar public room through the right panel.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the "FAVORITES" title is not present
    Then the room "General" is between "ROOMS" and "RECENT DIRECTS" sections

  Scenario: 4.011 Check "star" private room through the right panel.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.014 Check unstar private room through the right panel.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    And swipe from left to right
    Then the "FAVORITES" title is not present
    Then the room "Hulk" is between "ROOMS" and "RECENT DIRECTS" sections

  Scenario: 4.012 Check "star" direct room through the right panel.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "a.baiova" is between "FAVORITES" and "ROOMS" sections

  Scenario: 4.015 Check  unstar direct room through the right panel.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "a.baiova" room is presented in the left drawer
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When swipe from right to left
    Then the "Direct info" screen is opened
    When tap on the "favorite room" button
    And swipe from left to right
    And swipe from left to right
    Then the "FAVORITES" title is not present
    Then the room "a.baiova" is presented in the "RECENT DIRECTS" section

  Scenario: 4.016 Check for clickable "Room members" list in the right panel.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened

  Scenario: 4.017 Check search in the "Room members" input field.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And enter "testuser1" in the "Search user name" input field
    Then the "testuser1" room appears in the Room members search result

  Scenario: 4.018 Check for the open direct user through the right panel.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And enter "a.baiov" in the "Search user name" input field
    And tap on the "a.baiova" room
    And tap on the "Dialog button" button
    Then the "a.baiova" direct room is opened
    When enter "test message, optional response" in the "Write a message" input field
    When tap on the "Send" button
    Then the message "test message, optional response" is sent

  Scenario: 4.019 Check for clickable "Back" button in the "Room members" list.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Room members" link in the Right drawer
    And wait while results are refreshed
    Then the "Room members" screen is opened
    And tap on the Back button
    Then the "General" room is opened

  Scenario: 4.020 Check for clickable "Pinned messages" list in the right panel.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected

  Scenario: 4.021 Checking the clickability of tab "Messages" in "Pinned messages" block.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the Messages tab
    Then the Messages tab is selected

  Scenario: 4.022 Checking the clickability of tab "Files" in "Pinned messages" block.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the "Files" tab
    Then the "Files" tab is selected
    
  Scenario: 4.023 Check for clickable "Back" button in the "Pinned messages" block.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.024 Check transition to pinned message in chat history for public room by click on the message in "All" tab.
    Given the "General" room is opened
    When swipe from right to left
    Then the "Room info" screen is opened
    When tap on the "Pinned messages" link in the Right drawer
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    And wait while results are refreshed
    And wait while results are refreshed
    When tap on the "Работа восстановленна" pinned message
    And wait while results are refreshed
    Then the pinned message "Работа восстановленна" is open in chat history

#  *********************** Сделать прекондишен: отправить несколько сообщений в приватную комнату и запинить сообщения ********************************
  Scenario: 4.025 Check transition to pinned message in chat history for private room by click on the message in "All" tab.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Pinned messages" list
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.026 Check transition to pinned message in chat history for direct room by click on the message in "All" tab.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Pinned messages" list
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.027 Check transition to pinned message in chat history for public room by click on the message in "Messages" tab.
    When swipe from right to left
    When tap on the "Pinned messages" list
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    When tap on the "Всем доброе утро!" pinned message
    And wait while results are refreshed
    Then the pinned message "@room Всем доброе утро! ВАЖНО: С этого момента в компании вводится дополнительная мера контроля распространения заболеваний в офисе" is open in chat history

  Scenario: 4.028 Check transition to pinned message in chat history for private room by click on the message in "Messages" tab.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Pinned messages" list
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.029 Check transition to pinned message in chat history for direct room by click on the message in "Messages" tab.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Pinned messages" list
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.030 Check transition to pinned message in chat history for public room by click on the message in "Files" tab.
    When swipe from right to left
    When tap on the "Pinned messages" list
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the "Files" tab
    Then the "Files" tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.031 Check transition to pinned message in chat history for private room by click on the message in "Files" tab.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Pinned messages" list
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the "Files" tab
    Then the "Files" tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.032 Check transition to pinned message in chat history for direct room by click on the message in "Files" tab.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Pinned messages" list
    Then the "Pinned messages" screen is opened
    Then the "All" tab is selected
    When tap on the "Files" tab
    Then the "Files" tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

#  ****************************** Сделать прекондишен **************************************
  Scenario: 4.033 Check for clickable "Starred messages" list in the right panel.
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected

  Scenario: 4.034 Check transition to starred message in chat history for public room by click on the message in "All" tab.
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the "" starred message
    And wait while results are refreshed
    Then the starred message "" is open in chat history

  Scenario: 4.035 Check transition to starred message in chat history for private room by click on the message in "All" tab.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the "" starred message
    And wait while results are refreshed
    Then the starred message "" is open in chat history

  Scenario: 4.036 Check transition to starred message in chat history for direct room by click on the message in "All" tab.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the "" starred message
    And wait while results are refreshed
    Then the starred message "" is open in chat history

  Scenario: 4.037 Check transition to starred message in chat history for public room by click on the message in "Messages" tab.
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    When tap on the "" starred message
    And wait while results are refreshed
    Then the starred message "" is open in chat history

  Scenario: 4.038 Check transition to starred message in chat history for private room by click on the message in "Message" tab.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    When tap on the "" starred message
    And wait while results are refreshed
    Then the starred message "" is open in chat history

  Scenario: 4.039 Check transition to starred message in chat history foe direct room by click on the message in "Message" tab.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the Messages tab
    Then the Messages tab is selected
    When tap on the "" starred message
    And wait while results are refreshed
    Then the starred message "" is open in chat history

  Scenario: 4.040 Check transition to starred message in chat history for public room by click on the file in the "Files" tab.
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the "Files" tab
    Then the "Files" tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.041 Check transition to starred message in chat history for private room by click on the message in "Files" tab.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the "Files" tab
    Then the "Files" tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.042 Check transition to pinned message in chat history for direct room by click on the message in "Files" tab.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    Then the "All" tab is selected
    When tap on the "Files" tab
    Then the "Files" tab is selected
    When tap on the "" pinned message
    And wait while results are refreshed
    Then the pinned message "" is open in chat history

  Scenario: 4.043 Check for clickable "Back" button in the "Starred messages" list.
    When swipe from right to left
    When tap on the "Starred messages" list
    Then the "Starred messages" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.044 Check for clickable "Uploaded files" list in the right panel.
    When swipe from right to left
    When tap on the "Uploaded files" list
    Then the "Uploaded files" screen is opened

  Scenario: 4.045 Check transition to uploaded files in chat history for public room by click on the files in the "By all members" tab.
    When swipe from right to left
    When tap on the "Uploaded files" list
    Then the "Uploaded files" screen is opened
    Then the "By all members" tab is selected
    When tap on the "" uploaded file
    And wait while results are refreshed
    Then the uploaded file "" is open in chat history

  Scenario: 4.046 Check transition to uploaded files in chat history for private room by click on the files in the "By all members" tab.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Uploaded files" list
    Then the "Uploaded files" screen is opened
    Then the "By all members" tab is selected
    When tap on the "" uploaded file
    And wait while results are refreshed
    Then the uploaded file "" is open in chat history

  Scenario: 4.047 Check transition to uploaded files in chat history for direct room by click on the files in the "By all members" tab.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Uploaded files" list
    Then the "Uploaded files" screen is opened
    Then the "By all members" tab is selected
    When tap on the "" uploaded file
    And wait while results are refreshed
    Then the uploaded file "" is open in chat history

  Scenario: 4.048 Check transition to uploaded files in chat history for public room by click on the files in the "By me" tab.
    When swipe from right to left
    When tap on the "Uploaded files" list
    Then the "Uploaded files" screen is opened
    Then the "By all members" tab is selected
    When tap on the "By me" tab
    Then the "By me" tab is selected
    When tap on the "" uploaded file
    And wait while results are refreshed
    Then the uploaded file "" is open in chat history

  Scenario: 4.049 Check transition to uploaded files in chat history for private room by click on the files in the "By me" tab.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Uploaded files" list
    Then the "Uploaded files" screen is opened
    Then the "By all members" tab is selected
    When tap on the "By me" tab
    Then the "By me" tab is selected
    When tap on the "" uploaded file
    And wait while results are refreshed
    Then the uploaded file "" is open in chat history

  Scenario: 4.050 Check transition to uploaded files in chat history for direct room by click on the files in the "By me" tab.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Uploaded files" list
    Then the "Uploaded files" screen is opened
    Then the "By all members" tab is selected
    When tap on the "By me" tab
    Then the "By me" tab is selected
    When tap on the "" uploaded file
    And wait while results are refreshed
    Then the uploaded file "" is open in chat history

  Scenario: 4.051 Check for clickable "Back" button in the "Uploaded files" list.
    When swipe from right to left
    When tap on the "Uploaded files" list
    Then the "Uploaded files" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.052 Check for clickable "Room settings" list in the right panel.
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened

  Scenario: 4.053 Check "mute room" function for a public room on the "Room settings" in the right panel.
    When swipe from right to left
    And tap on the "Room settings" link
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    And swipe from left to right
    Then the room "General" is between "Testing" room and "RECENT DIRECTS" section

  Scenario: 4.063 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the public room.
    When swipe from right to left
    And tap on the "Room settings" link
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "General" room is opened
    And swipe from left to right
    Then the room "General" is between "Testing" room and "RECENT DIRECTS" section

  Scenario: 4.059 Check "unmuted room" function for a public room on the "Room settings" in the right panel.
    When swipe from right to left
    And tap on the "Room settings" link
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    And swipe from left to right
    Then the room "General" is between "ROOMS" section and "Marketplace" room

  Scenario: 4.054 Check "mute room" function for a private room on the "Room settings" in the right panel.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    And tap on the "Room settings" link
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "SharePrivateRoom" room is opened
    And swipe from left to right
    Then the room "SharePrivateRoom" is between "Testing" room and "RECENT DIRECTS" section

  Scenario: 4.064 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the private room.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    And tap on the "Room settings" link
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "SharePrivateRoom" room is opened
    And swipe from left to right
    Then the room "SharePrivateRoom" is between "Testing" room and "RECENT DIRECTS" section

  Scenario: 4.060 Check "unmuted room" function for a private room on the "Room settings" in the right panel.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    And tap on the "Room settings" link
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "SharePrivateRoom" room is opened
    And swipe from left to right
    Then the room "SharePrivateRoom" is between "" and "" rooms

  Scenario: 4.055 Check "mute room" function for a direct room on the "Room settings" in the right panel.
    When swipe from left to right
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When swipe from right to left
    And tap on the "Direct settings" link
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "a.baiova" direct room is opened
    And swipe from left to right
    Then the room "a.baiova" is presented under the "userTEST" room in the "RECENT DIRECTS" section

  Scenario: 4.065 Try to save the data without clicking on the "checkmark" button in the "Room settings" block for the direct room.
    When swipe from left to right
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When swipe from right to left
    And tap on the "Direct settings" link
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the Back button
    Then the "a.baiova" direct room is opened
    And swipe from left to right
    Then the room "a.baiova" is presented under the "userTEST" room in the "RECENT DIRECTS" section

  Scenario: 4.061 Check "unmuted room" function for a direct room on the "Room settings" in the right panel.
    When swipe from left to right
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When swipe from right to left
    And tap on the "Direct settings" link
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "a.baiova" direct room is opened
    And swipe from left to right
    Then the room "a.baiova" is between "RECENT DIRECTS" section and "userTEST" room

  Scenario: 4.062 Check for clickable "Back" button in the "Room settings" list.
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the chat history is opened
    Then the "General" room is opened

  Scenario: 4.078 Check "Leave room" function for public room.
    When swipe from left to right
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    And wait while results are refreshed
    When tap on the "Ok" link
    And wait while results are refreshed
    Then the "General" room is opened

#    Сделать прекондишен
  Scenario: 4.079 Check "Leave room" function for private room.
    When swipe from left to right
    And tap on the "SharePrivateRoom" room
    Then the "SharePrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    And wait while results are refreshed
    When tap on the "Ok" link
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 4.080 Check "Hide conversation" function for direct room.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When swipe from right to left
    When tap on the "Direct settings" list
    Then the "Direct settings" screen is opened
    When tap on the "Hide conversation" link
    And wait while results are refreshed
    When tap on the "Ok" link
    And wait while results are refreshed
    Then the "General" room is opened

# ------- Создать паблик руму (быть owner-ом) -----------/////Чекнуть\\\\\-----
  Scenario: 4.081 Checking adds users in the public room as the owner through the right drawer.
    When swipe from left to right
    And tap on the "TestAddUsers" room
    Then the "TestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    And tap on the "Add members" button
    And wait while results are refreshed
    And enter "testuser2" in the "Select users" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

  Scenario: 4.083 Check change admin rights to another participant in the public room as the an owner.
    When swipe from left to right
    And tap on the "qwdqyd" room
    Then the "qwdqyd" room is opened
    When swipe from right to left
    When tap on the "Room members (2)" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
#     Узнать должно апдейтиться динамически или только после перехода в другую руму и обратно?
    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name

  Scenario: 4.082 Check change owner's rights to other participant in the public room as the an owner.
    When swipe from left to right
    And tap on the "qwdqyd" room
    Then the "qwdqyd" room is opened
    When swipe from right to left
    When tap on the "Room members (2)" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Reassign owner’s rights" link
    Then the "a.baiova" user is presented between "Administration" section and "d.sharaievskyi" user
    Then the "(owner)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#    ------ Прекондишен ----------
  Scenario: 4.084 Checking remove any user from the public room as an owner.
    When swipe from left to right
    And tap on the "TestAddUsers" room
    Then the "TestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "a.baiova" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from " link
    And wait while results are refreshed
    Then the "a.baiova" user disappear in the Room members screen

# ------- Создать паблик руму (быть owner-ом) -----------/////Чекнуть\\\\\-----
  Scenario: 4.085 Checking adds users in the public room as the admin through the right drawer.
    When swipe from left to right
    And tap on the "TestAddUsers" room
    Then the "TestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    And tap on the "Add members" button
    And wait while results are refreshed
    And enter "testuser" in the "Select users" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

#    Сделать прекондишен и изменить номер проверки
  Scenario: 4.0 Check assign admin rights for other participants.
    When swipe from left to right
    And tap on the "qwdqyd" room
    Then the "qwdqyd" room is opened
    When swipe from right to left
    When tap on the "Room members (2)" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
#     Узнать должно апдейтиться динамически или только после перехода в другую руму и обратно?
    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#    ------ Прекондишен ----------
  Scenario: 4.086 Checking remove any user from the public room as an admin.
    When swipe from left to right
    And tap on the "TestAddUsers" room
    Then the "TestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "a.baiova" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from " link
    And wait while results are refreshed
    Then the "a.baiova" user disappear in the Room members screen

#    ------ Прекондишен ----------
  Scenario: 4.087 Checking adds users in the private room as the owner through the right drawer.
    When swipe from left to right
    And tap on the "PrivateTestAddUsers" room
    Then the "PrivateTestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    And tap on the "Add members" button
    And wait while results are refreshed
    And enter "testuser2" in the "Select users" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

  Scenario: 4.089 Check assign admin rights to another member in the private room as the owner.
    When swipe from left to right
    And tap on the "qwdqyd" room
    Then the "qwdqyd" room is opened
    When swipe from right to left
    When tap on the "Room members (2)" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
#     Узнать должно апдейтиться динамически или только после перехода в другую руму и обратно?
    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name

  Scenario: 4.088 Check change owner's rights to the other members in the private room as the owner.
    When swipe from left to right
    And tap on the "PrivateTestAddUsers" room
    Then the "PrivateTestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members (2)" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Reassign owner’s rights" link
    Then the "a.baiova" user is presented between "Administration" section and "d.sharaievskyi" user
    Then the "(owner)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#    ------ Прекондишен ----------
  Scenario: 4.090 Checking remove any user from the private room as an owner.
    When swipe from left to right
    And tap on the "PrivateTestAddUsers" room
    Then the "PrivateTestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "a.baiova" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from " link
    And wait while results are refreshed
    Then the "a.baiova" user disappear in the Room members screen

#    ------ Прекондишен ----------
  Scenario: 4.091 Checking adds users in the private room as the admin through the right drawer.
    When swipe from left to right
    And tap on the "PrivateTestAddUsers" room
    Then the "PrivateTestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    And tap on the "Add members" button
    And wait while results are refreshed
    And enter "testuser2" in the "Select users" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

  Scenario: 4.092 Check assign admin rights to another participant in the private room as the owner.
    When swipe from left to right
    And tap on the "qwdqyd" room
    Then the "qwdqyd" room is opened
    When swipe from right to left
    When tap on the "Room members (2)" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
#     Узнать должно апдейтиться динамически или только после перехода в другую руму и обратно?
    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#    ------ Прекондишен ----------
  Scenario: 4.093 Checking remove any user from the private room as an admin.
    When swipe from left to right
    And tap on the "PrivateTestAddUsers" room
    Then the "PrivateTestAddUsers" room is opened
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "a.baiova" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from " link
    And wait while results are refreshed
    Then the "a.baiova" user disappear in the Room members screen

#    ------ Прекондишен ----------
  Scenario: 4.094 Check "Edit room" function for the public room.
    When swipe from left to right
    And tap on the "MyPublicRoom" room
    Then the "MyPublicRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "MyChangeRoomName" in the field "Edit room name"
    And tap on the "Apply edit" button
    And wait while results are refreshed
    Then name "MyChangeRoomName" of room is present
    When tap on the Back button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "MyChangeRoomName" room is opened

#    ------ Прекондишен ----------
  Scenario: 4.095 Checking change description of the room in the "Edit room" screen.
    When swipe from left to right
    And tap on the "MyPublicRoom" room
    Then the "MyPublicRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change description to "MyChangeRoomName" in the field "Edit room name"
    And tap on the "Apply edit" button
    And wait while results are refreshed
    Then description "MyChangeRoomName" of room is present

#    ------ Прекондишен ----------
  Scenario: 4.096 Check delete members from "Edit list of members" in the "Edit Room" screen for public room.
    When swipe from left to right
    And tap on the "MyPublicRoom" room
    Then the "MyPublicRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "a.baiova" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from " link
    And wait while results are refreshed
    Then the "a.baiova" user disappear in the Room members screen

  Scenario: 4.097 Check invite members in the "Edit list of members" in the "Edit Room" screen for public room.
    When swipe from left to right
    And tap on the "MyPublicRoom" room
    Then the "MyPublicRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    And tap on the "Add members" button
    And wait while results are refreshed
    And enter "testuser2" in the "Select users" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

  Scenario: 4.098 Checking assign admin rights.
    When swipe from left to right
    And tap on the "MyPublicRoom" room
    Then the "MyPublicRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Assign as administrator" link
    Then the "Room members" screen is opened
#     Узнать должно апдейтиться динамически или только после перехода в другую руму и обратно?
    Then the "a.baiova" user is presented under "Administration" section and "d.sharaievskyi" user
    Then the "(admin)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#    *********** Поменять местами проверки *****************
  Scenario: 4.099 Check "Delete room" function for public room.
    When swipe from left to right
    And tap on the "MyPublicRoom" room
    Then the "MyPublicRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Accept" button
    And wait while results are refreshed
    Then "The public room #MyPublicRoom has been deleted" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 4.100 Check cancel delete room for public room.
    When swipe from left to right
    And tap on the "MyPublicRoom" room
    Then the "MyPublicRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Cancel" button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "MyPublicRoom" room is opened
#    ********************************************************

#    *********** Поменять местами проверки *****************
  Scenario: 4.101 Check "Delete room" function for private room.
    When swipe from left to right
    And tap on the "MyPrivateRoom" room
    Then the "MyPrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Accept" button
    And wait while results are refreshed
    Then "The private room #MyPrivateRoom has been deleted" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 4.102 Check cancel delete room for public room.
    When swipe from left to right
    And tap on the "MyPrivateRoom" room
    Then the "MyPrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Cancel" button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "MyPrivateRoom" room is opened
#    *******************************************************

#  ********** Прекондишен ************************
  Scenario: 4.103 Check the "reassign new owner" function for the public room.
    When swipe from left to right
    And tap on the "MyPublicRoom" room
    Then the "MyPublicRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "reassign new owner" link
    Then the "Room members" screen is opened
    When tap on the More option button
    When tap on the "Reassign owner’s rights" link
    And tap on the Back button
    When tap on the "Leave room" link
    Then "You left public room #MyPublicRoom" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

#  ********** Прекондишен ************************
  Scenario: 4.104 Check the "reassign new owner" function for the private room.
    When swipe from left to right
    And tap on the "MyPrivateRoom" room
    Then the "MyPrivateRoom" room is opened
    When swipe from right to left
    When tap on the "Room settings" list
    Then the "Room settings" screen is opened
    When tap on the "reassign new owner" link
    Then the "Room members" screen is opened
    When tap on the More option button
    When tap on the "Reassign owner’s rights" link
    And tap on the Back button
    When tap on the "Leave room" link
    Then "You left public room #MyPrivateRoom" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened