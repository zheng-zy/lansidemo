package com.demo.common.page;

import com.demo.common.model.Permission;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/30.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Tree implements java.io.Serializable {

    private String id;
    private String text;
    private String state = "open";// open,closed
    private boolean checked = false;
    private Object attributes;
    private List<Tree> children;
    private String iconCls;
    private String pid;

    public Tree(Permission permission) {
        this.id = permission.getId().toString();
        this.text = permission.getName();
        this.pid = permission.getParentId().toString();
    }

}
