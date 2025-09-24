package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.AdBanner;

/**
 * 广告图管理Mapper接口
 * 
 * @author ruoyi
 * @date 2025-01-24
 */
public interface AdBannerMapper 
{
    /**
     * 查询广告图管理
     * 
     * @param id 广告图管理主键
     * @return 广告图管理
     */
    public AdBanner selectAdBannerById(Long id);

    /**
     * 查询广告图管理列表
     * 
     * @param adBanner 广告图管理
     * @return 广告图管理集合
     */
    public List<AdBanner> selectAdBannerList(AdBanner adBanner);

    /**
     * 根据位置查询广告图列表
     * 
     * @param position 显示位置
     * @return 广告图管理集合
     */
    public List<AdBanner> selectAdBannerByPosition(String position);

    /**
     * 查询有效的广告图列表（在有效期内且状态正常）
     *
     * @return 广告图管理集合
     */
    public List<AdBanner> selectActiveAdBannerList();

    /**
     * 新增广告图管理
     * 
     * @param adBanner 广告图管理
     * @return 结果
     */
    public int insertAdBanner(AdBanner adBanner);

    /**
     * 修改广告图管理
     * 
     * @param adBanner 广告图管理
     * @return 结果
     */
    public int updateAdBanner(AdBanner adBanner);

    /**
     * 删除广告图管理
     * 
     * @param id 广告图管理主键
     * @return 结果
     */
    public int deleteAdBannerById(Long id);

    /**
     * 批量删除广告图管理
     * 
     * @param ids 需要删除的广告图管理主键集合
     * @return 结果
     */
    public int deleteAdBannerByIds(String[] ids);

    /**
     * 校验广告标题是否唯一
     * 
     * @param title 广告标题
     * @return 广告图信息
     */
    public AdBanner checkTitleUnique(String title);

    /**
     * 批量更新状态
     * 
     * @param ids 广告图ID集合
     * @param status 状态
     * @return 结果
     */
    public int changeStatus(String[] ids, String status);
}