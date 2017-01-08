package com.demo.user;

import com.demo.common.Result;
import com.demo.common.model.Blog1;
import com.demo.common.model.User;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

import java.util.HashMap;
import java.util.Map;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/26.
 */

public class UserController extends Controller {
    public void index() {
        setAttr("userPage", Blog1.me.paginate(getParaToInt(0, 1), 10));
//        render("user.html");
    }

    public void list() {
        int page = getParaToInt("page", 1);
        int rows = getParaToInt("rows", 10);
        Page<User> userPage = User.dao.paginate(page, rows);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("rows", userPage.getList());
        map.put("total", userPage.getTotalRow());
        renderJson(map);
    }

    public void test() {
        String id = getAttr("id");
        String id2 = getPara("id");
        renderJson(Result.SUCCESS);
    }

    @Before(UserValidator.class)
    public void save() {
        getModel(User.class, null).save();
        renderJson(Result.SUCCESS);
    }

    @Before(UserValidator.class)
    public void update() {
        User user = getModel(User.class, null);
        user.setId(getParaToInt("id"));
        user.update();
        renderJson(Result.SUCCESS);
    }

    public void delete() {
        User.dao.deleteById(getParaToInt("id"));
        renderJson(Result.SUCCESS);
    }

}
