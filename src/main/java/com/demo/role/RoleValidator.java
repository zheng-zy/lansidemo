package com.demo.role;

import com.demo.common.model.Role;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/28.
 */
public class RoleValidator extends Validator {

    protected void validate(Controller controller) {
        validateRequiredString("name", "nameMsg", "请输入角色名!");
    }

    protected void handleError(Controller controller) {
        controller.keepModel(Role.class);

        String actionKey = getActionKey();
        if (actionKey.equals("/role/save"))
            controller.render("index.html");
        else if (actionKey.equals("/role/update"))
            controller.render("index.html");
    }
}
