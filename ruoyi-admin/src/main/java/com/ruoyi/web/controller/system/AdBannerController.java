package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.AdBanner;
import com.ruoyi.system.service.IAdBannerService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 广告图管理Controller
 * 
 * @author ruoyi
 * @date 2025-01-24
 */
@Controller
@RequestMapping("/system/adbanner")
public class AdBannerController extends BaseController
{
    private String prefix = "system/adbanner";

    @Autowired
    private IAdBannerService adBannerService;

    @RequiresPermissions("system:adbanner:view")
    @GetMapping()
    public String adbanner()
    {
        return prefix + "/adbanner";
    }

    /**
     * 查询广告图管理列表
     */
    @RequiresPermissions("system:adbanner:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(AdBanner adBanner)
    {
        startPage();
        List<AdBanner> list = adBannerService.selectAdBannerList(adBanner);
        return getDataTable(list);
    }

    /**
     * 导出广告图管理列表
     */
    @RequiresPermissions("system:adbanner:export")
    @Log(title = "广告图管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public void export(HttpServletResponse response, AdBanner adBanner)
    {
        List<AdBanner> list = adBannerService.selectAdBannerList(adBanner);
        ExcelUtil<AdBanner> util = new ExcelUtil<AdBanner>(AdBanner.class);
        util.exportExcel(response, list, "广告图管理数据");
    }

    /**
     * 新增广告图管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存广告图管理
     */
    @RequiresPermissions("system:adbanner:add")
    @Log(title = "广告图管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(AdBanner adBanner)
    {
        if (!adBannerService.checkTitleUnique(adBanner))
        {
            return error("新增广告图'" + adBanner.getTitle() + "'失败，广告标题已存在");
        }
        adBanner.setCreateBy(getLoginName());
        return toAjax(adBannerService.insertAdBanner(adBanner));
    }

    /**
     * 修改广告图管理
     */
    @RequiresPermissions("system:adbanner:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        AdBanner adBanner = adBannerService.selectAdBannerById(id);
        mmap.put("adBanner", adBanner);
        return prefix + "/edit";
    }

    /**
     * 修改保存广告图管理
     */
    @RequiresPermissions("system:adbanner:edit")
    @Log(title = "广告图管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(AdBanner adBanner)
    {
        if (!adBannerService.checkTitleUnique(adBanner))
        {
            return error("修改广告图'" + adBanner.getTitle() + "'失败，广告标题已存在");
        }
        adBanner.setUpdateBy(getLoginName());
        return toAjax(adBannerService.updateAdBanner(adBanner));
    }

    /**
     * 删除广告图管理
     */
    @RequiresPermissions("system:adbanner:remove")
    @Log(title = "广告图管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(adBannerService.deleteAdBannerByIds(ids));
    }

    /**
     * 校验广告标题
     */
    @PostMapping("/checkTitleUnique")
    @ResponseBody
    public boolean checkTitleUnique(AdBanner adBanner)
    {
        return adBannerService.checkTitleUnique(adBanner);
    }

    /**
     * 状态修改
     */
    @RequiresPermissions("system:adbanner:edit")
    @Log(title = "广告图管理", businessType = BusinessType.UPDATE)
    @PostMapping("/changeStatus")
    @ResponseBody
    public AjaxResult changeStatus(AdBanner adBanner)
    {
        adBanner.setUpdateBy(getLoginName());
        return toAjax(adBannerService.updateAdBanner(adBanner));
    }

    /**
     * 批量修改状态
     */
    @RequiresPermissions("system:adbanner:edit")
    @Log(title = "广告图管理", businessType = BusinessType.UPDATE)
    @PostMapping("/batchChangeStatus")
    @ResponseBody
    public AjaxResult batchChangeStatus(String ids, String status)
    {
        return toAjax(adBannerService.changeStatus(ids, status));
    }

}