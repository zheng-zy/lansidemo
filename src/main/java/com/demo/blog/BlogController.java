package com.demo.blog;

import com.demo.common.model.Blog;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Page;

import java.util.HashMap;
import java.util.Map;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2017/1/8.
 */
public class BlogController extends Controller {

    public void index() {

    }


    public void list() {
        int page = getParaToInt("page", 1);
        int rows = getParaToInt("rows", 10);
        Page<Blog> userPage = Blog.dao.paginate(page, rows);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("rows", userPage.getList());
        map.put("total", userPage.getTotalRow());
        renderJson(map);
    }

}
