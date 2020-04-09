Feature:  Precondition

#  1. Cоздать тестового юзера для андроид тестов, у которого будут доступны по несколько паблик комнат и приват комнат
#  2. Должны быть доступны несколько паблик комнат (с перепиской, запиненными сообщениями, старед сообщениями, загруженными файлами)
#  3. Должны быть доступны несколько приват комнат (с перепиской, запиненными сообщениями, старед сообщениями, загруженными файлами)
#  4. Должны быть доступны несколько директов (с перепиской, запиненными сообщениями, старед сообщениями, загруженными файлами)

  Scenario: 001 Send message in Marketplace public room as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    When tap on the "Join" button
    And wait while results are refreshed
    When enter "test message" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message" is present

  Scenario: 002 Create Private room and send message as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
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
    And enter "SpiderMan" in the "Create room name" input field
    And enter "Hello" in the "Create room description" input field
    And tap on the "Add members" button
    Then the "Invite members" screen is opened
    And enter "d.sharaievskyi" in the "search user name" input field
    And tap on the "d.sharaievskyi" "username"
    And tap on the "Apply select users" button
    Then the "Create room" screen is opened
    And tap on the "Apply create room" button
    Then the "SpiderMan" room is opened
    When enter "test message" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message" is present

  Scenario: 003 Send message in direct room as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Recent directs" title
    Then the "Start direct" screen is opened
    When tap on the Search sign
    And wait while input field would be presented
    When enter "d.sharaievsk" in the "Select users" input field
    When tap on the "d.sharaievskyi" room
    Then the "d.sharaievskyi" direct room is opened
    And wait while results are refreshed
    And hide the keyboard
    When enter "test message" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message" is present

  Scenario: 004 Subscribe to the "Marketplace" public room
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    When tap on the "Join" button
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer

  Scenario: 005 Subscribe to the "auto" public room
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the "auto" room
    Then the "auto" room is opened
    When tap on the "Join" button
    When swipe from left to right
    Then Left Drawer is opened
    Then the "auto" room is presented in the left drawer

  Scenario: 006 Send message in Marketplace public room as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    When tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    When enter "test message 2" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message 2" is present

  Scenario: 007 Send message in Private room and send message as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    When enter "test message 2" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message 2" is present

  Scenario: 008 Send message in direct room as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "d.sharaievskyi" room is presented in the left drawer
    When tap on the "d.sharaievskyi" room
    Then the "d.sharaievskyi" direct room is opened
    And wait while results are refreshed
    When enter "test message 2" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message 2" is present

  Scenario: 009 Subscribe to the "Alfresco" public room
    When login using the properties file
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
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Alfresco" room is presented in the left drawer

  Scenario: 010 Subscribe to the "random" public room
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the Search sign
    When enter "rand" in the "Search rooms" input field
    Then the "random" room appears in the Browse rooms search result
    When tap on the "random" room
    Then the "random" room is opened
    When tap on the "Join" button
    When swipe from left to right
    Then Left Drawer is opened
    Then the "random" room is presented in the left drawer

  Scenario: 011 Add the direct "a.baiova" in the Recent Direct list
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Recent directs" title
    Then the "Start direct" screen is opened
    When tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened

  Scenario: 012 Add the direct "a.antonenko" in the Recent Direct list
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Recent directs" title
    Then the "Start direct" screen is opened
    When tap on the "a.antonenko" room
    Then the "a.antonenko" direct room is opened

  Scenario: 013 Send message in Marketplace public room as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    When tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    When enter "test message 3" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message 3" is present

  Scenario: 014 Send message in Private room and send message as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    When enter "test message 3" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message 3" is present

  Scenario: 015 Send message in direct room as testuser2
    Given the "Sign in to your Team" screen is opened
    When enter "chat-demo" in the "Your team url" input field
    When tap on the "CONTINUE" button
    Then the "Sign in to Aimprosoft" screen is opened
    When enter "testuser2@email.com" in the "Login" input field
    When enter "qwerty1" in the "Password" input field
    And tap on the "SIGN IN" button
    Then the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "d.sharaievskyi" room is presented in the left drawer
    When tap on the "d.sharaievskyi" room
    Then the "d.sharaievskyi" direct room is opened
    When enter "test message 3" in the "Write a message" input field
    When tap on the "Send" button
    And wait while results are refreshed
    Then message "test message 3" is present

  Scenario: 016 Long tap on the Logo and  Mark all as read
    When login using the properties file
    Then the user is logged in
    Then the "General" room is opened
    When long tap on the "Logo"
    When tap on the "Mark all as read" link