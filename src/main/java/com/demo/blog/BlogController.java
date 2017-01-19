package com.demo.blog;

import com.demo.common.model.Blog;
import com.demo.common.page.Result;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.ext.interceptor.GET;
import com.jfinal.plugin.activerecord.Page;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import static com.demo.common.constant.NOT_FIND;

/**
 * <p></p>
 * Created by zhezhiyong@163.com on 2017/1/8.
 */
public class BlogController extends Controller {

    public void index() {
        int id = getParaToInt("id", 0);
        System.out.println("id: " + id);
        if (0 == id) {
            render("add_md.html");
        } else {
            render("edit_md.html");
        }
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

    public void save() {
        String title = getPara("title", "");
        String mdContent = getPara("md_content", "");
        String htmlContent = getPara("html_content", "");
        Blog blog = new Blog();
        blog.setTitle(title);
        blog.setContent(mdContent);
        blog.setUpdateTime(new Date());
        blog.save();
        renderJson(Result.SUCCESS);
    }

    public void update() {
        int id = getParaToInt("id");
//        String title = getPara("title", "");
        String mdContent = getPara("md_content", "");
        Blog blog = Blog.dao.findById(id);
        blog.setContent(mdContent);
        blog.setUpdateTime(new Date());
        blog.update();
        renderJson(Result.SUCCESS);
    }

    public void delete() {
        int id = getParaToInt("id");
        Blog blog = Blog.dao.findById(id);
        if (null == blog) {
            renderJson(new Result(400, false, NOT_FIND, null));
        } else {
            blog.delete();
            renderJson(Result.SUCCESS);
        }
    }

    @Before(GET.class)
    public void detail() {
        int id = getParaToInt("id", 0);
        Blog blog = Blog.dao.findById(id);
        renderJson(new Result(200, true, "", blog));
    }

    public void view() {
        render("blog_md.html");
    }


}
