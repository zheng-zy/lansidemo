package com.demo.common.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseRoleResource<M extends BaseRoleResource<M>> extends Model<M> implements IBean {

    public java.lang.Integer getRoleResourceId() {
        return get("role_resource_id");
    }

    public void setRoleResourceId(java.lang.Integer roleResourceId) {
        set("role_resource_id", roleResourceId);
    }

    public java.lang.Integer getRoleId() {
        return get("role_id");
    }

    public void setRoleId(java.lang.Integer roleId) {
        set("role_id", roleId);
    }

    public java.lang.Integer getResourceId() {
        return get("resource_id");
    }

    public void setResourceId(java.lang.Integer resourceId) {
        set("resource_id", resourceId);
    }

}