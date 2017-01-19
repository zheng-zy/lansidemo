package com.demo;

import com.alibaba.fastjson.JSON;
import com.demo.common.page.Tree;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/14.
 */
public class AppTest {
    public static void main(String[] args) {
        String action = "";
        switch (action){

        }

        System.out.println("System.getProperty(\"user.dir\") = " + System.getProperty("user.dir"));
        System.out.println("System.getProperty(\"java.io.tmpdir\") = " + System.getProperty("java.io.tmpdir") + File.separatorChar + "1.png");
        System.out.println("System.getProperty(\"java.io.tmpdir\") = " + System.getProperty("java.io.tmpdir") + File.separator + "1.png");

        Map<String, Tree> treeMap = new HashMap<String, Tree>();
        Tree a = new Tree("1", "view", "0");
        Tree b = new Tree("2", "add", "1");
        treeMap.put("1", a);
        a.setChildren(new ArrayList<Tree>());
        a.getChildren().add(b);
        System.out.println("JSON.toJSONString(treeMap.get(\"1\")) = " + JSON.toJSONString(treeMap.get("1")));
    }
}


