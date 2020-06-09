Feature: Left Drawer

  Background:
    Given login using the properties file
    Then the user is logged in

  Scenario: 2.001 Check to open a public room through the left drawer.
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the Search sign
    When enter "Marketplace" in the "Search rooms" input field
    And wait while results are refreshed
    When tap on the "Join" link
    And wait while results are refreshed
    When tap on the "Search logo" button
    When tap on the Back button
    Given the "General" room is opened
    When swipe from left to right
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And tap on the "Marketplace" room
    Then the "Marketplace" room is opened

  Scenario: 2.002 Check to open a private room through the left drawer.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And tap on the "Private room" title
    And enter "SpiderMan" in the "Create room name" input field
    And enter "Peter Parker" in the "Create room description" input field
    And tap on the "Apply create room" button
    Then the "SpiderMan" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "General" room is presented in the left drawer
    And tap on the "General" room
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And tap on the "SpiderMan" room
    Then the "SpiderMan" room is opened

  Scenario: 2.003 Check to open a direct room through the left drawer.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Recent directs" title
    Then the "Start direct" screen is opened
    When tap on the Search sign
    And wait while input field would be presented
    When enter "android" in the "Select users" input field
    When tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "General" room is presented in the left drawer
    And tap on the "General" room
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And tap on the "androidQA2" room
    Then the "androidQA2" direct room is opened

  Scenario: 2.004 Check "Search" for private room in the left drawer.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And enter "SpiderMan" in the "Search" input field
    Then the "SpiderMan" room appears in the left drawer search result

  Scenario: 2.005 Check "Search" for public room in the left drawer.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And enter "Marketplace" in the "Search" input field
    Then the "Marketplace" room appears in the left drawer search result

  Scenario: 2.006 Check "Search" for direct room in the left drawer.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And enter "androidQA2" in the "Search" input field
    Then the "androidQA2" room appears in the left drawer search result

  Scenario: 2.007 Check case sensitive in the "Search" input field in the left drawer.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And enter "Spider" in the "Search" input field
    Then the "SpiderMan" room appears in the left drawer search result

  Scenario: 2.008 Check case sensitive in the "Search" input field in the left drawer.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And enter "MARKETPLACE" in the "Search" input field
    Then the "Marketplace" room appears in the left drawer search result

  Scenario: 2.009 Check case sensitive in the "Search" input field in the left drawer.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And enter "ANDROIDQA2" in the "Search" input field
    Then the "androidQA2" room appears in the left drawer search result

  Scenario: 2.010 Check a partial search in the "Search" input field in the left drawer for public room.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Marketplace" room is presented in the left drawer
    And enter "MARKET" in the "Search" input field
    Then the "Marketplace" room appears in the left drawer search result

  Scenario: 2.011 Check a partial search in the "Search" input field in the left drawer for private room.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "SpiderMan" room is presented in the left drawer
    And enter "spider" in the "Search" input field
    Then the "SpiderMan" room appears in the left drawer search result

  Scenario: 2.012 Check a partial search in the "Search" input field in the left drawer for direct room.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "androidQA2" room is presented in the left drawer
    And enter "ANDROID" in the "Search" input field
    And wait while results are refreshed
    Then the "androidQA2" room appears in the left drawer search result

#  Scenario: 2.013 Check "Unsubscribe" function for public room.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    When tap on the "Rooms" title
#    Then the "Browse rooms" screen is opened
#    Then the "All" tab is selected
#    When tap on the Search sign
#    When enter "Alfresco" in the "Search rooms" input field
#    And wait while results are refreshed
#    When tap on the "Join" link
#    And wait while results are refreshed
#    When tap on the "Search logo" button
#    When tap on the Back button
#    Then the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    Then the "Alfresco" room is presented in the left drawer
#    When use long tap on the "Alfresco" room
#    Then the "Unsubscribe" link is presented
#    And tap on the "Unsubscribe" link
#    And wait while results are refreshed
#    Then the "Alfresco" room is deleted from left drawer

#  Scenario: 2.014 Check "Hide conversation" function for direct room.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    When tap on the "Recent directs" title
#    Then the "Start direct" screen is opened
#    When tap on the Search sign
#    And wait while input field would be presented
#    When enter "testuser" in the "Select users" input field
#    When tap on the "testuser2" room
#    Then the "testuser2" direct room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    When tap on the "General" room
#    Then the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    Then the "testuser2" room is presented in the left drawer
#    When use long tap on the "testuser2" room
#    And wait while results are refreshed
#    Then the "Hide conversation" link is presented
#    And tap on the "Hide conversation" link
#    And wait while results are refreshed
#    Then the "testuser2" room is deleted from left drawer

  Scenario: 2.015 Check the clickable "Rooms" title.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Rooms" title
    Then the "Browse rooms" screen is opened

  Scenario: 2.016 Check the clickable "All" and "Joined" tabs in the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Joined" tab
    Then the "Joined" tab is selected
    When tap on the "All" tab
    Then the "All" tab is selected

  Scenario: 2.017 Check "Search rooms" in the "All" tab in the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the Search sign
    And wait while input field would be presented
    And enter "Alfresco" in the "Search rooms" input field
    Then the "Alfresco" room appears in the Browse rooms search result

  Scenario: 2.018 Check "Search rooms" in the "Joined" tab in the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Joined" tab
    Then the "Joined" tab is selected
    And tap on the Search sign
    And wait while input field would be presented
    And enter "Marketplace" in the "Search rooms" input field
    Then the "Marketplace" room appears in the Browse rooms search result

  Scenario: 2.019 Check "Search rooms" in the "Joined" tab in the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Joined" tab
    Then the "Joined" tab is selected
    And tap on the Search sign
    And wait while input field would be presented
    And enter "Alfresco" in the "Search rooms" input field
    And wait while results are refreshed
    Then the "Alfresco" room does not appear in the Browse rooms search result

  Scenario: 2.020 Check search direct room in the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the Search sign
    And wait while input field would be presented
    And enter "androidQA2" in the "Search rooms" input field
    And wait while results are refreshed
    Then the "androidQA2" room does not appear in the Browse rooms search result

  Scenario: 2.021 Check "Leave" room in the "All" tab to the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the Search sign
    And wait while input field would be presented
    When enter "Alfresco" in the "Search rooms" input field
    And wait while results are refreshed
    When tap on the "Join" link
    And wait while results are refreshed
    When tap on the "Search logo" button
    When tap on the Back button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Alfresco" room is presented in the left drawer
    And tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the Search sign
    And wait while input field would be presented
    And enter "Alfresco" in the "Search rooms" input field
    Then the "Alfresco" room appears in the Browse rooms search result
    Then the "LEAVE" link is presented
    When tap on the "Leave" link
    When tap on the "Search logo" button
    When tap on the Search sign
    And wait while input field would be presented
    When enter "Alfresco" in the "Search rooms" input field
    And wait while results are refreshed
    Then the "JOIN" link is presented

  Scenario: 2.022 Check "Leave" room in the "Joined" tab to the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the Search sign
    And wait while input field would be presented
    When enter "Alfresco" in the "Search rooms" input field
    And wait while results are refreshed
    When tap on the "Join" link
    And wait while results are refreshed
    When tap on the "Search logo" button
    When tap on the Back button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then the "Alfresco" room is presented in the left drawer
    And tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    When tap on the "Joined" tab
    Then the "Joined" tab is selected
    And tap on the Search sign
    And wait while input field would be presented
    And enter "Alfresco" in the "Search rooms" input field
    Then the "Alfresco" room appears in the Browse rooms search result
    Then the "LEAVE" link is presented
    When tap on the "Leave" link
    And wait while results are refreshed
    Then the "Alfresco" room does not appear in the Browse rooms search result

  Scenario: 2.023 Checking creates public room in the "All" tab to the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And enter "IronMan" in the "Create room name" input field
    And enter "Tony Stark" in the "Create room description" input field
    And tap on the "Add members" button
    Then the "Invite members" screen is opened
    And enter "androidQA2" in the "search user name" input field
    And tap on the "androidQA2" "username"
    And tap on the "Apply select users" button
    And tap on the "Apply create room" button
    Then the "IronMan" room is opened

  Scenario: 2.024 Checking creates public room in the "Joined" tab to the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    And tap on the "Joined" tab
    Then the "Joined" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And enter "CaptainAmerica" in the "Create room name" input field
    And enter "Steven Rogers" in the "Create room description" input field
    And tap on the "Add members" button
    Then the "Invite members" screen is opened
    And enter "androidQA2" in the "search user name" input field
    And tap on the "androidQA2" "username"
    And tap on the "Apply select users" button
    And tap on the "Apply create room" button
    Then the "CaptainAmerica" room is opened

  Scenario: 2.025 Checking creates private room in the "Joined" tab to the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    And tap on the "Joined" tab
    Then the "Joined" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And tap on the "Private room" title
    And enter "Thor" in the "Create room name" input field
    And enter "King of Asgard" in the "Create room description" input field
    And tap on the "Add members" button
    Then the "Invite members" screen is opened
    And enter "androidQA2" in the "search user name" input field
    And tap on the "androidQA2" "username"
    And tap on the "Apply select users" button
    And tap on the "Apply create room" button
    Then the "Thor" room is opened

  Scenario: 2.026 Checking creates private room in the "All" tab to the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    Then the "All" tab is selected
    And tap on the "Create room" button
    Then the "Create room" screen is opened
    And tap on the "Private room" title
    And enter "Hulk" in the "Create room name" input field
    And enter "Dr. Robert Bruce Banner" in the "Create room description" input field
    And tap on the "Add members" button
    Then the "Invite members" screen is opened
    And enter "androidQA2" in the "search user name" input field
    And tap on the "androidQA2" "username"
    And tap on the "Apply select users" button
    And tap on the "Apply create room" button
    Then the "Hulk" room is opened

  Scenario: 2.027 Check the clickable "Back" button in the "Browse rooms" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Rooms" title
    Then the "Browse rooms" screen is opened
    And tap on the Back button
    Then the "General" room is opened

  Scenario: 2.028 Check search direct room in the "Start direct" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Recent direct" title
    Then the "Start direct" screen is opened
    And tap on the Search sign
    And wait while input field would be presented
    And enter "androidQA2" in the "Select users" input field
    Then the "androidQA2" user appears in the Start direct search result

  Scenario: 2.029 Check select first user from the "Start direct" list.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Recent direct" title
    Then the "Start direct" screen is opened
    And tap on the "EvgeniyDisti" user from Start direct list
    Then the "EvgeniyDisti" direct room is opened

  Scenario: 2.030 Checking select user from the middle of the "Start direct" list.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Recent direct" title
    Then the "Start direct" screen is opened
    And tap on the "testuser2" user from Start direct list
    Then the "testuser2" direct room is opened

  Scenario: 2.031 Checking select the last user from the "Start direct" list.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Recent direct" title
    Then the "Start direct" screen is opened
    When tap on the Search sign
    And wait while input field would be presented
    When enter "tiutiunnyk" in the "Select users" input field
    And tap on the "y.tiutiunnyk" user from Start direct list
    Then the "y.tiutiunnyk" direct room is opened

  Scenario: 2.032 Check the clickable "Back" button in the "Recent direct" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    When tap on the "Recent direct" title
    Then the "Start direct" screen is opened
    And tap on the Back button
    Then the "General" room is opened

  Scenario: 2.033 Check transition by tap on the "bell" icon.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened

#  Scenario: 2.034 Check "Mute all chat for:" function for 20 minutes.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    And tap on the "Switch mute" slider
#    Then the remaining time is set for "20 minutes"
#
#  Scenario: 2.046 Check cancel "Mute all chat for:" function for 20 minutes.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    Then the remaining time is set for "20 minutes"
#    And tap on the "Switch mute" slider
#    Then mute all chat for "20 minutes" function is canceled
#
#  Scenario: 2.036 Check "Mute all chat for:" function for 1 hour.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    And tap on the "Switch mute" slider
#    And tap on the "1 hour" quantity
#    Then the remaining time is set for "1 hour"
#
#  Scenario: 2.047 Check cancel "Mute all chat for:" function for 1 hour.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    Then the remaining time is set for "1 hour"
#    And tap on the "Switch mute" slider
#    Then mute all chat for "1 hour" function is canceled
#
#  Scenario: 2.038 Check "Mute all chat for:" function for 2 hours.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    And tap on the "Switch mute" slider
#    And tap on the "2 hours" quantity
#    Then the remaining time is set for "2 hours"
#
#  Scenario: 2.048 Check cancel "Mute all chat for:" function for 2 hours.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    Then the remaining time is set for "2 hours"
#    And tap on the "Switch mute" slider
#    Then mute all chat for "2 hours" function is canceled
#
#  Scenario: 2.040 Check "Mute all chat for:" function for 4 hours.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    And tap on the "Switch mute" slider
#    And tap on the "4 hours" quantity
#    Then the remaining time is set for "4 hours"
#
#  Scenario: 2.049 Check cancel "Mute all chat for:" function for 4 hours.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    Then the remaining time is set for "4 hours"
#    And tap on the "Switch mute" slider
#    Then mute all chat for "4 hours" function is canceled
#
#  Scenario: 2.042 Check "Mute all chat for:" function for 8 hours.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    And tap on the "Switch mute" slider
#    And tap on the "8 hours" quantity
#    Then the remaining time is set for "8 hours"
#
#  Scenario: 2.050 Check cancel "Mute all chat for:" function for 8 hours.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    Then the remaining time is set for "8 hours"
#    And tap on the "Switch mute" slider
#    Then mute all chat for "8 hours" function is canceled
#
#  Scenario: 2.044 Check "Mute all chat for:" function for 24 hours.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    And tap on the "Switch mute" slider
#    And tap on the "24 hours" quantity
#    Then the remaining time is set for "24 hours"
#
#  Scenario: 2.051 Check cancel "Mute all chat for:" function for 24 hours.
#    Given the "General" room is opened
#    When tap on the "Logo" button
#    Then Left Drawer is opened
#    And tap on the "Bell icon" button
#    Then the "Mute all chat for:" pop-up menu is opened
#    Then the remaining time is set for "24 hours"
#    And tap on the "Switch mute" slider
#    Then mute all chat for "24 hours" function is canceled

  Scenario: 2.052 Check transition by tap on the "Notification settings" link.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened

  Scenario: 2.053 Check the turn-on the "DND" mode.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    Then the "DND switch" slider is turned "OFF"
    When tap on the "DND switch" slider
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    Then the "DND switch" slider is turned "ON"

  Scenario: 2.054 Check the turn-off the "DND" mode.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    Then the "DND switch" slider is turned "ON"
    When tap on the "DND switch" slider
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    Then the "DND switch" slider is turned "OFF"

  Scenario: 2.057 Check save "Only direct and mentions" function in the "General settings" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    When tap on the "Only direct and mentions" radio button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    Then the "Only direct and mentions" status is saved

  Scenario: 2.060 Check save "Nothing" function in the "General settings" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    When tap on the "Nothing" radio button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    Then the "Nothing" status is saved

  Scenario: 2.062 Check save "Everything" function in the "General settings" screen.
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    When tap on the "Everything" radio button
    And tap on the "Apply settings" button
    Then the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    And tap on the "Bell icon" button
    Then the "Mute all chat for:" pop-up menu is opened
    And tap on the "Notification settings" link
    Then the "Notification settings" screen is opened
    Then the "Everything" status is saved

  Scenario: Postcondition
    Given the "General" room is opened
    When tap on the "Logo" button
    Then Left Drawer is opened
    Then remove "EvgeniyDisti" direct room
    Then remove "y.tiutiunnyk" direct room