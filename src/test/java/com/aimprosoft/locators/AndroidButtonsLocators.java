package com.aimprosoft.locators;

public interface AndroidButtonsLocators {

    String CONTINUE = "sign_in_team_continue_btn";
    String SIGN_IN = "sign_in_continue_btn";
    String SIGN_IN_XPATH = "//android.widget.Button[contains(@resource-id, 'sign_in_continue_btn')]";
    String JOIN = "joinButton";
    String BACK_BTN = "android.widget.ImageButton";
    String MORE_OPTION_BTN = "android.widget.ImageView";
    String BACK = "arrow_back";
    String LOGO = "title_button";
    String LOGO_XPATH = "//android.widget.ImageView[contains(@resource-id, 'title_button')]";

    // Room creation
    String CREATE_ROOM = "create_room_btn";
    String PUBLIC_CHANNEL = "channel_public";
    String PRIVATE_CHANNEL = "channel_private";
    String APPLY_CREATION = "apply_create_btn";

    String SEND = "message_bar_send";
    String ADD_MEMBERS = "add_members_btn";
    String APPLY_SELECT_USERS = "apply_select_users_btn";
    String APPLY_SELECT_ROOM = "apply_select_room_btn";
    String APPLY_CREATE_ROOM = "apply_create_btn";
    String STAR_SIGN = "action_star";
    String SHARE = "action_share";
    String MESSAGE_BAR_EDIT = "message_bar_edit";
    String CANCEL_EDIT = "btn_cancel_edit_mode";

    // Left drawer
    String BELL_ICON = "notification_button";
    String SWITCH_MUTE = "switch_mute";
    String MUTE_TIME_ITEM_CHECKED = "//android.widget.CheckedTextView[contains(@checked, 'true')][@text='$1']";
    String MUTE_TIME_BUTTON = "//android.widget.CheckedTextView[contains(@resource-id, 'mute_time_item')][@text='$1']";

    // General settings
    String DND_SWITCH = "dnd_switch";
    String APPLY_SETTINGS = "apply_settings_btn";
    String RADIO_BUTTON = "//android.widget.RadioButton[@text='$1']";

    String THREE_DOTS = "action_right_panel";
    String REACTION_BTN = "//android.widget.ImageView[contains(@content-desc, 'Add reaction')]";
    String DELETE_BTN_POP_UP_MENU = "//android.widget.Button[contains(@resource-id, 'button1')]";
    String CANCEL_BTN_POP_UP_MENU = "//android.widget.Button[contains(@resource-id, 'button2')]";

    // Right drawer
    String FAVORITE_ROOM = "favorite_room";
    String MUTE_ROOM = "mute_room";
    String INVITE_MEMBERS = "invite_members_fab";
    String MORE_ACTION = "moreAction";
    String APPLY_EDIT = "apply_edit_btn";
    String MUTE_SWITCH = "mute_switch";
    String DIALOG_BUTTON = "dialog_btn";
    String PUBLIC_OR_PRIVATE_CHANNEL_XPATH = "//android.widget.RadioButton[contains(@resource-id, '$1')]";
    String ACCEPT = "accept";
    String OK_BUTTON = "ok_button";
    String CANCEL = "cancel";
    String LEAVE_ROOM = "leave_room_view";

    String DELETE_BTN_MODAL_ANDROID = "//android.widget.TextView[contains(@resource-id, 'deleteButton')]";

    String EMOJI = "cb_smiles_mode";

    // Browse rooms
    String SEARCH_LOGO = "search_imageView_logo";
}
