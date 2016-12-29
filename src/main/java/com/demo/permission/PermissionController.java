package com.demo.permission;

import com.demo.common.Result;
import com.demo.common.model.Permission;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/28.
 */
public class PermissionController extends Controller {
    public void list() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Permission> permissions = Permission.dao.findAll();
        for (Permission permission : permissions) {
            permission.put("_parentId", permission.getParentId());
        }
        map.put("rows", permissions);
        map.put("total", permissions.size());
        renderJson(map);
    }

    @Before(PermissionValidator.class)
    public void save() {
        Permission permission = getModel(Permission.class, null);
        Permission parent = Permission.dao.findById(permission.getParentId());
        permission.setParentIds(parent.getParentIds() + parent.getId() + "/");
        permission.save();
        renderJson(Result.SUCCESS);
    }

    @Before(PermissionValidator.class)
    public void update() {
        int id = getParaToInt("id");
        String name = getPara("name");
        int type = getParaToInt("type");
        String url = getPara("url");
        String iconCls = getPara("icon_cls");
        String permission = getPara("permission");
        int status = getParaToInt("status");
        String desc = getPara("desc");
        Permission permission1 = new Permission();
        permission1.setId(id);
        permission1.setName(name);
        permission1.setType(type);
        permission1.setUrl(url);
        permission1.setIconCls(iconCls);
        permission1.setPermission(permission);
        permission1.setStatus(status);
        permission1.setDesc(desc);
        permission1.update();
        permission1.setUpdateTime(new Date());
        renderJson(Result.SUCCESS);
    }

    public void delete() {
        Permission.dao.deleteById(getParaToInt("id"));
        renderJson(Result.SUCCESS);
    }
}
