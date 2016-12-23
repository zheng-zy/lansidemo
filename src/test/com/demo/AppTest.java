package com.demo;

import java.io.File;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2016/12/14.
 */
public class AppTest {
    public static void main(String[] args) {
        System.out.println("System.getProperty(\"user.dir\") = " + System.getProperty("user.dir"));
        System.out.println("System.getProperty(\"java.io.tmpdir\") = " + System.getProperty("java.io.tmpdir") + File.separatorChar + "1.png");
        System.out.println("System.getProperty(\"java.io.tmpdir\") = " + System.getProperty("java.io.tmpdir") + File.separator + "1.png");
    }
}


