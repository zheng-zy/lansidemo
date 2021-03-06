package com.demo.common.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseUserAppRole<M extends BaseUserAppRole<M>> extends Model<M> implements IBean {

    public java.lang.Integer getUserAppRolesId() {
        return get("user_app_roles_id");
    }

    public void setUserAppRolesId(java.lang.Integer userAppRolesId) {
        set("user_app_roles_id", userAppRolesId);
    }

    public java.lang.String getClientSysId() {
        return get("client_sys_id");
    }

    public void setClientSysId(java.lang.String clientSysId) {
        set("client_sys_id", clientSysId);
    }

    public java.lang.String getUsername() {
        return get("username");
    }

    public void setUsername(java.lang.String username) {
        set("username", username);
    }

    public java.lang.Integer getRoleId() {
        return get("role_id");
    }

    public void setRoleId(java.lang.Integer roleId) {
        set("role_id", roleId);
    }

}
