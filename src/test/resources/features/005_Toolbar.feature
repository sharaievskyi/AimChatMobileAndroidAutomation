Feature: Toolbar

  Background: Login to chat
    When login using the properties file
    Then the user is logged in

   Scenario: 5.000 Create one public room "BlackPanther" with user

  Scenario: 5.001 Check transition by click on the name of the public room.
    Given the "General" room is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened

  Scenario: 5.002 Check "mute room" function for public room.
    Given the "General" room is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 5.004 Checking the "unmute room" function in the "Room settings" for the public room.
    Given the "General" room is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "General" is between "CaptainAmerica" and "Hulk" rooms
#    Then the room "General" is between "ROOMS" section and "Marketplace" room

  Scenario: 5.005 Check notification settings "only mentions" in the "Room settings" screen.
    Given the "General" room is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Only mentions" radio button
    When tap on the "Apply settings" button
    Then the "General" room is opened
    Then the chat history is opened
    When tap on the "General" name in the toolbar
    Then the "Room settings" screen is opened
    Then "Only mentions" notification settings is saved

  Scenario: 5.010 Check the "Leave room" function for the public room as a participant.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened
    When tap on the "Marketplace" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    Then "You left public room #Marketplace" alert is displayed

  Scenario: 5.011 Check the room name edit in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "CaptainAmerica" room is presented in the left drawer
    And tap on the "CaptainAmerica" room
    Then the "CaptainAmerica" room is opened
    When tap on the "CaptainAmerica" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "DoctorStrange" in the field "Edit room name"
    And tap on the "Apply edit" button
    And wait while results are refreshed
    Then name "DoctorStrange" of room is present
    When tap on the Back button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "DoctorStrange" room is opened

  Scenario: 5.012 Check the room name validation with Russian letters in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "ТестКомната" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should begin and contains only latin character" alert is displayed

  Scenario: 5.013 Check the room name validation with only the digits in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "123456789" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should begin and contains only latin character" alert is displayed

  Scenario: 5.014 Check the room name validation with the empty field in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When clear the field "Edit room name"
    And tap on the "Apply edit" button
    Then "This field is required" alert is displayed

  Scenario: 5.015 Check the room name validation with only whitespace in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "   " in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "This field is required" alert is displayed

  Scenario: 5.016 Check the room name validation with only special characters in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "%%&&*" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should begin and contains only latin character" alert is displayed

  Scenario: 5.017 Check add a new members to the public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "testuser" in the "Select users" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

  Scenario: 5.018 Checking delete the members from the public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "IronMan" room is presented in the left drawer
    And tap on the "IronMan" room
    Then the "IronMan" room is opened
    When tap on the "IronMan" name in the toolbar
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

  Scenario: 5.019 Check the "Assign as administrator" function in the "Room members" screen for the public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "CaptainAmerica" room is presented in the left drawer
    And tap on the "CaptainAmerica" room
    Then the "CaptainAmerica" room is opened
    When tap on the "CapatainAmerica" name in the toolbar
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

  Scenario: 5.020 Check the "Reassign owner's rights" function in the "Room members" screen for the public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "CaptainAmerica" room is presented in the left drawer
    And tap on the "CaptainAmerica" room
    Then the "CaptainAmerica" room is opened
    When tap on the "CaptainAmerica" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Reassign owner’s rights" link
    Then the "a.baiova" user is presented between "Administration" section and "d.sharaievskyi" user
    Then the "(owner)" role is presented between "a.baiova" username and "Anna Baiova" user full name

  Scenario: 5.021 Check the cancel "Delete room" in the "Room Settings" screen for the public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "DoctorStrange" room is presented in the left drawer
    And tap on the "DoctorStrange" room
    Then the "DoctorStrange" room is opened
    When tap on the "DoctorStrange" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Cancel" button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "DoctorStrange" room is opened

  Scenario: 5.022 Check the "Delete room" function in the "Room settings" screen for the public room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "DoctorStrange" room is presented in the left drawer
    And tap on the "DoctorStrange" room
    Then the "DoctorStrange" room is opened
    When tap on the "DoctorStrange" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Accept" button
    And wait while results are refreshed
    Then "The public room #DoctorStrange has been deleted" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 5.023 Check the "reassign new owner" function.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "BlackPanther" room is presented in the left drawer
    And tap on the "BlackPanther" room
    Then the "BlackPanther" room is opened
    When tap on the "BlackPanther" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "reassign new owner" link
    Then the "Room members" screen is opened
    When tap on the More option button
    When tap on the "Reassign owner’s rights" link
    Then the "a.baiova" user is presented between "Administration" section and "d.sharaievskyi" user
    Then the "(owner)" role is presented between "a.baiova" username and "Anna Baiova" user full name

  Scenario: 5.024 Check transition by click on the name of the private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened

  Scenario: 5.025 Check "mute room" function for private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When tap on the "Hulk" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "SHulk" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "Thor" room and "RECENT DIRECTS" section

  Scenario: 5.027 Checking the "unmute room" function in the "Room settings" for the private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When tap on the "Hulk" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "Hulk" room is opened
    And swipe from left to right
    Then Left Drawer is opened
    Then the room "Hulk" is between "General" and "IronMan" rooms

  Scenario: 5.028 Check notification settings "only mentions" in the "Room settings" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Only mentions" radio button
    When tap on the "Apply settings" button
    Then the "SpiderMan" room is opened
    Then the chat history is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened
    Then "Only mentions" notification settings is saved

  Scenario: 5.031 Check the "Leave room" function for the private room as a member.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened
    When tap on the "SpiderMan" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Leave room" link
    Then "You left private room #SpiderMan" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 5.032 Check the room name edit in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Hulk" room is presented in the left drawer
    And tap on the "Hulk" room
    Then the "Hulk" room is opened
    When tap on the "Hulk" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "GhostRider" in the field "Edit room name"
    And tap on the "Apply edit" button
    And wait while results are refreshed
    Then name "GhostRider" of room is present
    When tap on the Back button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "GhostRider" room is opened

  Scenario: 5.033 Check the room name validation with Russian letters in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "ТестКомната" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should begin and contains only latin character" alert is displayed

  Scenario: 5.034 Check the room name validation with only the digits in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "123456789" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should begin and contains only latin character" alert is displayed

  Scenario: 5.035 Check the room name validation with the empty field in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When clear the field "Edit room name"
    And tap on the "Apply edit" button
    Then "This field is required" alert is displayed

  Scenario: 5.036 Check the room name validation with only whitespace in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "   " in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "This field is required" alert is displayed

  Scenario: 5.037 Check the room name validation with only special characters in the "Edit Room" screen.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When change room name to "%%&&*" in the field "Edit room name"
    And tap on the "Apply edit" button
    Then "Name should begin and contains only latin character" alert is displayed

  Scenario: 5.038 Check add a new members to the private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    And tap on the "Invite members" button
    And wait while results are refreshed
    And enter "testuser" in the "Select users" input field
    And tap on the "testuser2" link
    And tap on the "Apply select users" button
    And wait while results are refreshed
    When swipe from right to left
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "testuser2" user appear in the Room members screen

  Scenario: 5.039 Checking delete the members from the private room.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "GhostRider" room is presented in the left drawer
    And tap on the "GhostRider" room
    Then the "GhostRider" room is opened
    When tap on the "GhostRider" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    Then the "a.baiova" user appear in the Room members screen
    When tap on the "More action" button
    And tap on the "Remove from" link
    And wait while results are refreshed
    Then the "a.baiova" user disappear in the Room members screen

  Scenario: 5.040 Check the "Assign as administrator" function in the "Room members" screen for the private room.
    When swipe from left to right
    And tap on the "PrivateRoomTest" room
    Then the "PrivateRoomTest" room is opened
    When tap on the "PrivateRoomTest" name in the toolbar
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

  Scenario: 5.041 Check the "Reassign owner's rights" function in the "Room members" screen for the private room.
    When swipe from left to right
    And tap on the "PrivateRoomTest" room
    Then the "PrivateRoomTest" room is opened
    When tap on the "PrivateRoomTest" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Edit room" link
    Then the "Edit room" screen is opened
    When tap on the "Room members" list
    Then the "Room members" screen is opened
    When tap on the "More action" button
    And tap on the "Reassign owner’s rights" link
    Then the "a.baiova" user is presented between "Administration" section and "d.sharaievskyi" user
    Then the "(owner)" role is presented between "a.baiova" username and "Anna Baiova" user full name

#    *********** Поменять местами проверки *****************
  Scenario: 5.042 Check the "Delete room" function in the "Room settings" screen for the private room.
    When swipe from left to right
    And tap on the "PrivateRoomTest" room
    Then the "PrivateRoomTest" room is opened
    When tap on the "PrivateRoomTest" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Accept" button
    And wait while results are refreshed
    Then "The public room #PrivateRoomTest has been deleted" alert is displayed
    When tap on the "Ok button" button
    And wait while results are refreshed
    Then the "General" room is opened

  Scenario: 5.043 Check the cancel "Delete room"  in the "Room Settings" screen for the private room.
    When swipe from left to right
    And tap on the "PrivateRoomTest" room
    Then the "PrivateRoomTest" room is opened
    When tap on the "PrivateRoomTest" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "Delete room" link
    And wait while results are refreshed
    When tap on the "Cancel" button
    Then the "Room settings" screen is opened
    When tap on the Back button
    Then the "PrivateRoomTest" room is opened
#    **********************************************************

#  Прекондишен Private rooom
  Scenario: 5.044 Check the "reassign new owner" function.
    When swipe from left to right
    And tap on the "ghjgh" room
    Then the "ghjgh" room is opened
    When tap on the "ghjgh" name in the toolbar
    Then the "Room settings" screen is opened
    When tap on the "reassign new owner" link
    Then the "Room members" screen is opened
    When tap on the More option button
    When tap on the "Reassign owner’s rights" link
    Then the "a.baiova" user is presented between "Administration" section and "d.sharaievskyi" user
    Then the "(owner)" role is presented between "a.baiova" username and "Anna Baiova" user full name

  Scenario: 5.045 Check transition by click on the name of the direct room.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When tap on the "testuser1" name in the toolbar
    Then the "Direct settings" screen is opened

  Scenario: 5.046 Check "mute room" function for direct room.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When tap on the "testuser1" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "a.baiova" direct room is opened
    And swipe from left to right
    Then the room "a.baiova" is presented under the "userTEST" room in the "RECENT DIRECTS" section

  Scenario: 5.048 Checking the "unmute room" function in the "Direct settings" for the public room.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When tap on the "testuser1" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "mute switch" button
    And tap on the "Apply settings" button
    Then the "a.baiova" direct room is opened
    And swipe from left to right
    Then the room "a.baiova" is between "RECENT DIRECTS" section and "userTEST" room

  Scenario: 5.050 Check notification settings "Nothing" in the "Direct settings" screen.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When tap on the "testuser1" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "Nothing" radio button
    And tap on the "Apply settings" button
    Then the "testuser1" direct room is opened
    When tap on the "testuser1" name in the toolbar
    Then the "Direct settings" screen is opened
    Then "Nothing" notification settings is saved

  Scenario: 5.049 Check notification settings "Everything" in the "Direct settings" screen.
    When swipe from left to right
    And tap on the "testuser1" room
    Then the "testuser1" direct room is opened
    When tap on the "testuser1" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "Everything" radio button
    And tap on the "Apply settings" button
    Then the "testuser1" direct room is opened
    When tap on the "testuser1" name in the toolbar
    Then the "Direct settings" screen is opened
    Then "Everything" notification settings is saved

  Scenario: 5.052 Check "Hide conversation" function in the "Direct settings" screen.
    When swipe from left to right
    And tap on the "a.baiova" room
    Then the "a.baiova" direct room is opened
    When tap on the "a.baiova" name in the toolbar
    Then the "Direct settings" screen is opened
    When tap on the "Hide conversation" link
    Then the "General" room is opened
    When swipe from left to right
    Then the "a.baiova" room is deleted from left drawer