package com.demo.blog;

import com.demo.common.model.Blog1;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

/**
 * BlogController1
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
@Before(BlogInterceptor1.class)
public class BlogController1 extends Controller {

    public void index() {
        setAttr("blogPage", Blog1.me.paginate(getParaToInt(0, 1), 10));
        render("blog.html");
    }

    public void add() {
    }

    @Before(BlogValidator1.class)
    public void save() {
        getModel(Blog1.class).save();
        redirect("/blog");
    }

    public void edit() {
        setAttr("blog", Blog1.me.findById(getParaToInt()));
    }

    @Before(BlogValidator1.class)
    public void update() {
        getModel(Blog1.class).update();
        redirect("/blog");
    }

    public void delete() {
        Blog1.me.deleteById(getParaToInt());
        redirect("/blog");
    }
}


