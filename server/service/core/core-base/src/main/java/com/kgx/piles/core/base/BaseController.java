package com.kgx.piles.core.base;

import com.kgx.piles.core.util.PageData;
import org.apache.log4j.Logger;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by wangyang on 2017/9/15.
 */
public class BaseController {
    protected Logger log = Logger.getLogger(this.getClass());

    private static final long serialVersionUID = -6486239758641984873L;

    /**
     * 获得PageData
     * @return
     */
    public PageData getPageData() {
        return new PageData(this.getRequest());
    }

    /**
     * 获得ModelAndView
     * @return
     */
    public ModelAndView getModelAndView() {
        return new ModelAndView();
    }

    /**
     * 获取request对象
     * @return
     */
    public HttpServletRequest getRequest() {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
                .getRequest();
        return request;
    }
}
