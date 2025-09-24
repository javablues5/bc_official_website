package com.ruoyi.app.controller;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.annotation.Anonymous;
import com.ruoyi.system.service.IAdBannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import java.util.List;

/**
 * 广告图管理Controller
 * 
 * @author ruoyi
 * @date 2025-01-24
 */
@Controller
@RequestMapping("/app/adbanner")
public class AppAdBannerController extends BaseController
{
    @Autowired
    private IAdBannerService adBannerService;

    /**
     * 查询有效的广告图列表
     */
    @GetMapping("/getActiveList")
    @Anonymous
    @ResponseBody
    public AjaxResult getActiveList()
    {
        return AjaxResult.success(adBannerService.selectActiveAdBannerList());
    }
}