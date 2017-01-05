package com.demo.common.util;

import com.demo.common.page.Tree;

import java.util.ArrayList;
import java.util.List;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2017/1/5.
 */
public class TreeUtils {

    public static List<Tree> getFatherNode(List<Tree> trees) {
        List<Tree> newTrees = new ArrayList<Tree>();
        for (Tree tree : trees) {
            if ("0".equals(tree.getPid())) {
                tree.setChildren(getChildren(tree.getId(), trees));
                newTrees.add(tree);
            }
        }
        return newTrees;
    }


    private static List<Tree> getChildren(String pid, List<Tree> trees) {
        List<Tree> newTrees = new ArrayList<Tree>();
        for (Tree tree : trees) {
            if (tree.getPid().equals(pid)) {
                tree.setChildren(getChildren(tree.getId(), trees));
                newTrees.add(tree);
            }
        }
        return newTrees;
    }
}
