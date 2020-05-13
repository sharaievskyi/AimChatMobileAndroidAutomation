package com.aimprosoft.locators;

public interface AndroidLocators {
    String ENTRANCE_LOGO = "android.widget.ImageView";
    String TOOLBAR_ID = "toolbar";
    String SIGN_IN_TITLE = "sign_in_title";
    String TEXT_INPUT_ERROR = "textinput_error";
    String LOGO = "//android.widget.FrameLayout[contains(@resource-id, '$1')]";
    String ELEMENT_WITH_TEXT_XPATH = "//android.widget.TextView[contains(@text, '$1')]";
    String TEAM_NAME = "team_name";
    String FINGERPRINT_AUTHORIZATION_ID = "//android.widget.FrameLayout[contains(@resource-id, 'content')]";
    String PROGRESS_BAR_LOAD_DATA = "//android.widget.ProgressBar[contains(@resource-id, 'progressBarLoadData')]";

    // Room screen
    String ROOM_TITLE_NAME_ID = "toolbar_title";
    String ROOM_TITLE_NAME_XPATH = "//android.widget.TextView[contains(@resource-id, 'toolbar_title')][@text='$1']";
    String DIRECT_ROOM_NAME_ID = "direct_name";
    String DIRECT_ROOM_NAME_XPATH = "//android.widget.TextView[contains(@resource-id, 'direct_name')][@text='$1']";

    // Left drawer
    String CHANNEL_NAME_ID = "channelName";
    String CHANNEL_NAME_XPATH = "//android.widget.TextView[contains(@resource-id, 'channelName')][@text='$1']";
    String ROOM_NAME = "roomName";
    String ROOM_NAME_LEFT_DRAWER_XPATH = "//android.widget.TextView[contains(@resource-id, 'roomName')][@text='$1']";
    String ROOM_LEFT_DRAWER_XPATH = "//android.widget.TextView[contains(@resource-id, 'roomName')]";
    String ROOM_NAME_ID = "room_Name";
    String MUTE_TITLE = "mute_title";
    String MUTE_TIME_ITEM = "mute_time_item";
    String LEFT_DRAWER = "sidebar_layout";

    // Browse room screen
    String ACTION_SEARCH = "action_search";
    String BROWSE_ROOMS_LIST_ID = "room_name";
    String BROWSE_ROOMS_LIST_XPATH = "//android.widget.TextView[contains(@resource-id, 'room_name')][@text='$1']";

    // Chat history screen
    String CHAT_LIST = "chatlist";
    String PINNED_STARRED = "//android.widget.TextView[contains(@resource-id, 'pinned_starred_desr')][@text='$1']";
    String PINNED_STARRED_ID = "pinned_starred_desr";
    String SMILE_VIEW = "smile_view";
    String EMOJI_ICON = "emoji_icon";
    String CONTENT_POP_UP_MENU_XPATH = "//android.widget.FrameLayout[contains(@resource-id, 'content')]";
    String CONTENT_POP_UP_MENU = "// android.widget.ScrollView";
    String LIST_VIEW_POP_UP = "//android.widget.ListView";
    String USERNAME = "chat_stamp";
    String MESSAGES_TAB = "//android.widget.TextView[@text='MESSAGES']";
    String SHARE_MESSAGE = "citationContainer";
    String SHARE_MESSAGE_CONTAINER_XPATH = "//android.widget.RelativeLayout[contains(@resource-id, 'citationContainer')]";
    String SHARE_MESSAGE_TEXT_XPATH = "//android.widget.TextView[contains(@resource-id, 'link_description')][@text='$1']";
    String REACTION = "reaction";
    String NEW_MESSAGE_SEPARATOR_XPATH = "//android.widget.TextView[contains(@resource-id, 'new_message_divider_text')][@text='New messages']";
    String DETAILS_SCREEN_XPATH = "//android.widget.TextView[contains(@resource-id, 'toolbar_title_view')][@text='$1']";
    String DATE_SEPARATOR_XPATH = "//android.widget.TextView[contains(@resource-id, 'message_divider_text')][@text='$1']";

    // Android message bar
    String MAIN_INPUT = "message_bar_input";
    String SEND_MESSAGE = "message_bar_send";
    String EMOJI = "cb_smiles_mode";
    String ATTACH_FILE = "cb_attachment_mode";
    String MAKE_A_PHOTO = "cb_camera_mode";
    String GALLERY = "cb_gallery_mode";
    String EMOJI_KEYBOARD = "emoji_keyboard_view";
    String STARRED_MESSAGE_ID = "msg_content_text";
    String MESSAGE_CONTENT_TEXT = "msg_content_text";
    String MESSAGE_CONTENT_TEXT_XPATH = "//android.widget.TextView[contains(@resource-id, 'msg_content_text')][@text='$1']";

    // Right drawer
    String RIGHT_DRAWER = "right_frag_container";
    String ADMINISTRATION_BLOCK = "message_divider_text";
    String USER_NAME = "username";
    String USER_NAME_XPATH = "//android.widget.TextView[contains(@resource-id, 'username')][@text='$1']";
    String USER_ROLE = "userRole";
    String NAME_ROLE_VIEW = "nameRoleView";
    String USER_FULL_NAME = "userFullName";
    String ROOM_MEMBERS = "room_members_text";
    String PINNED_MESSAGES = "pinned_items_text";
    String STARRED_MESSAGES = "starred_items_text";
    String UPLOADED_FILES = "uploaded_items_text";
    String ROOM_SETTINGS = "settings_text";
    String DIRECT_SETTINGS = "settings_text";
}
