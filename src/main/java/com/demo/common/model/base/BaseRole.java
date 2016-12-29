package com.demo.common.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseRole<M extends BaseRole<M>> extends Model<M> implements IBean {

    public java.lang.Integer getId() {
        return get("id");
    }

    public void setId(java.lang.Integer id) {
        set("id", id);
    }

    public java.lang.String getName() {
        return get("name");
    }

    public void setName(java.lang.String name) {
        set("name", name);
    }

    public java.lang.Integer getStatus() {
        return get("status");
    }

    public void setStatus(java.lang.Integer status) {
        set("status", status);
    }

    public java.util.Date getCreateTime() {
        return get("create_time");
    }

    public void setCreateTime(java.util.Date createTime) {
        set("create_time", createTime);
    }

    public java.util.Date getUpdateTime() {
        return get("update_time");
    }

    public void setUpdateTime(java.util.Date updateTime) {
        set("update_time", updateTime);
    }

    public java.lang.String getDesc() {
        return get("desc");
    }

    public void setDesc(java.lang.String desc) {
        set("desc", desc);
    }

}
