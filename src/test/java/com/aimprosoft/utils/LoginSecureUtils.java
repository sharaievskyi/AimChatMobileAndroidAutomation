
package com.aimprosoft.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.Properties;

public class LoginSecureUtils {

    private static final Logger LOGGER = LoggerFactory.getLogger(LoginSecureUtils.class);
    private static Properties properties;

    public LoginSecureUtils() {
        properties = PropertiesUtils.getProperties("aimchat.properties");
    }

    public String getUrl() {
        String url = String.valueOf(properties.get("com.chat.url"));
        if (url.equals("")) {
            throw new AssertionError("The URL value is not set in the property file.");
        }
        return url;
    }

    public String getLogin() {
        String login = String.valueOf(properties.get("com.chat.login"));
        if (login.equals("")) {
            throw new AssertionError("The login value is not set in the property file.");
        }
        return login;
    }

    public String getPassword() {
        String password = String.valueOf(properties.get("com.chat.password"));
        if (password.equals("")) {
            throw new AssertionError("The password value is not set in the property file.");
        }
        return password;
    }
}
