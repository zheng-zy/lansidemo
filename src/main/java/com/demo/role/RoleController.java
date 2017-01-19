package com.demo.role;

import com.demo.common.model.Role;
import com.demo.common.page.Result;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

import java.util.HashMap;
import java.util.Map;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/28.
 */
public class RoleController extends Controller {

    public void list() {
        int page = getParaToInt("page");
        int rows = getParaToInt("rows");
        Page<Role> rolePage = Role.dao.paginate(page, rows);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("rows", rolePage.getList());
        map.put("total", rolePage.getTotalRow());
        renderJson(map);
    }

    @Before(RoleValidator.class)
    public void save() {
        getModel(Role.class, null).save();
        renderJson(Result.SUCCESS);
    }

    @Before(RoleValidator.class)
    public void update() {
        Role role = getModel(Role.class, null);
        role.setId(getParaToInt("id"));
        role.update();
        renderJson(Result.SUCCESS);
    }

    public void delete() {
        Role.dao.deleteById(getParaToInt("id"));
        renderJson(Result.SUCCESS);
    }

}
