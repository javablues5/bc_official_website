package com.ruoyi.system.domain;

import java.util.Date;
import java.util.List;
import javax.validation.constraints.*;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excel.ColumnType;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 广告图管理对象 sys_ad_banner
 * 
 * @author ruoyi
 * @date 2025-01-24
 */
public class AdBanner extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 广告标题 */
    @Excel(name = "广告标题")
    private String title;

    /** 广告描述 */
    @Excel(name = "广告描述")
    private String description;

    /** 图片URL */
    @Excel(name = "图片URL")
    private String imageUrl;

    /** 链接地址 */
    @Excel(name = "链接地址")
    private String linkUrl;

    /** 显示位置（1首页轮播 2侧边栏 3底部 4弹窗） */
    @Excel(name = "显示位置", readConverterExp = "1=首页轮播,2=侧边栏,3=底部,4=弹窗")
    private String position;

    /** 排序号 */
    @Excel(name = "排序号", cellType = ColumnType.NUMERIC)
    private Integer sortOrder;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 是否在新窗口打开（0否 1是） */
    @Excel(name = "新窗口打开", readConverterExp = "0=否,1=是")
    private String openNewWindow;
    
    /** 是否站内（0否 1是） */
    @Excel(name = "是否站内", readConverterExp = "0=否,1=是")
    private String isInner;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setTitle(String title) 
    {
        this.title = title;
    }

    @NotBlank(message = "广告标题不能为空")
    @Size(min = 0, max = 100, message = "广告标题长度不能超过100个字符")
    public String getTitle() 
    {
        return title;
    }

    public void setDescription(String description) 
    {
        this.description = description;
    }

    @Size(min = 0, max = 500, message = "广告描述长度不能超过500个字符")
    public String getDescription() 
    {
        return description;
    }

    public void setImageUrl(String imageUrl) 
    {
        this.imageUrl = imageUrl;
    }

    @NotBlank(message = "图片URL不能为空")
    @Size(min = 0, max = 500, message = "图片URL长度不能超过500个字符")
    public String getImageUrl() 
    {
        return imageUrl;
    }

    public void setLinkUrl(String linkUrl) 
    {
        this.linkUrl = linkUrl;
    }

    @Size(min = 0, max = 500, message = "链接地址长度不能超过500个字符")
    public String getLinkUrl() 
    {
        return linkUrl;
    }

    public void setPosition(String position) 
    {
        this.position = position;
    }

    @NotBlank(message = "显示位置不能为空")
    public String getPosition() 
    {
        return position;
    }

    public void setSortOrder(Integer sortOrder) 
    {
        this.sortOrder = sortOrder;
    }

    public Integer getSortOrder() 
    {
        return sortOrder;
    }

    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    public void setOpenNewWindow(String openNewWindow) 
    {
        this.openNewWindow = openNewWindow;
    }

    public String getOpenNewWindow() 
    {
        return openNewWindow;
    }
    
    public void setIsInner(String isInner) 
    {
        this.isInner = isInner;
    }
    
    public String getIsInner() 
    {
        return isInner;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("title", getTitle())
            .append("description", getDescription())
            .append("imageUrl", getImageUrl())
            .append("linkUrl", getLinkUrl())
            .append("position", getPosition())
            .append("sortOrder", getSortOrder())
            .append("status", getStatus())
            .append("openNewWindow", getOpenNewWindow())
            .append("isInner", getIsInner())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}