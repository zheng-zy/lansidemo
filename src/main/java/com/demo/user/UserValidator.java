package com.demo.user;

import com.demo.common.model.User;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/26.
 */
public class UserValidator extends Validator {

    protected void validate(Controller controller) {
        validateRequiredString("name", "nameMsg", "请输入用户名!");
        validateRequiredString("login_name", "loginNameMsg", "请输入登录名!");
        validateRequiredString("password", "passwordMsg", "请输入密码!");
    }

    protected void handleError(Controller controller) {
        controller.keepModel(User.class);

        String actionKey = getActionKey();
        if (actionKey.equals("/user/save"))
            controller.render("add.html");
        else if (actionKey.equals("/user/update"))
            controller.render("edit.html");
    }


}
