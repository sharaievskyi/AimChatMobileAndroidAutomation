package com.aimprosoft.utils;

import org.json.JSONArray;
import org.json.JSONObject;
import static io.restassured.RestAssured.given;

public class RestUtils {

    private String token;

    public RestUtils() {
        this.token = getToken();
    }

    private String getToken() {
        String url = "https://chat.aimprosoft.com/oauth/token?grant_type=password&type=LDAP";
        LoginSecureUtils loginSecureUtils = new LoginSecureUtils();
        return given().header("Content-Type", "application/x-www-form-urlencoded").
                formParam("username", loginSecureUtils.getLogin()).
                formParam("password", loginSecureUtils.getPassword()).
                formParam("client_id", "aimprosoft_chat").
                formParam("client_secret", "aimprosoft_chat_secret").post(url).then().extract().path("access_token");
    }

    private String getRoomIdByName(String roomName) {
        String url = "https://chat.aimprosoft.com/api/rooms";
        String id = new String();
        String body = given().header("Authorization", "Bearer " + token).post(url).getBody().asString();
        JSONArray rooms = new JSONArray(body);
        for (int i = 0; i < rooms.length(); ++i) {
            JSONObject object = (JSONObject) rooms.get(i);
            if (object.getString("name").equalsIgnoreCase(roomName)) {
                id = String.valueOf(object.get("id"));
            }
        }
        return id;
    }

    public boolean removeRoom(String roomName) {
        String url = "https://chat.aimprosoft.com/api/rooms/" + getRoomIdByName(roomName);
        String returnCode = String.valueOf(given().header("Authorization", "Bearer " + token).delete(url).getStatusCode());
        return returnCode.equalsIgnoreCase("204") ? true : false;
    }
}
