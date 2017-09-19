package com.kgx.piles.oms.basic.webapp.controller;

import com.kgx.piles.core.base.BaseController;
import com.kgx.piles.core.util.PageData;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by wangyang on 2017/9/15.
 */
@Controller
public class LoginController extends BaseController{

    /**
     * 访问登陆页
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/login_toLogin")
    public ModelAndView toLogin() throws Exception {
        ModelAndView mv = this.getModelAndView();
        PageData pd = this.getPageData();
        pd.put("SYSNAME", "管理系统");
        mv.setViewName("system/admin/login");
        mv.addObject("pd", pd);
        return mv;
    }
}
