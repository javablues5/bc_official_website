package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.AdBanner;
import com.ruoyi.system.mapper.AdBannerMapper;
import com.ruoyi.system.service.IAdBannerService;

/**
 * 广告图管理Service业务层实现
 * 
 * @author ruoyi
 * @date 2025-01-24
 */
@Service
public class AdBannerServiceImpl implements IAdBannerService
{
    @Autowired
    private AdBannerMapper adBannerMapper;

    /**
     * 查询广告图管理
     * 
     * @param id 广告图管理主键
     * @return 广告图管理
     */
    @Override
    public AdBanner selectAdBannerById(Long id)
    {
        return adBannerMapper.selectAdBannerById(id);
    }

    /**
     * 查询广告图管理列表
     * 
     * @param adBanner 广告图管理
     * @return 广告图管理集合
     */
    @Override
    public List<AdBanner> selectAdBannerList(AdBanner adBanner)
    {
        return adBannerMapper.selectAdBannerList(adBanner);
    }

    /**
     * 根据位置查询广告图列表
     * 
     * @param position 显示位置
     * @return 广告图管理集合
     */
    @Override
    public List<AdBanner> selectAdBannerByPosition(String position)
    {
        return adBannerMapper.selectAdBannerByPosition(position);
    }

    /**
     * 查询有效的广告图列表（状态正常）
     *
     * @return 广告图管理集合
     */
    @Override
    public List<AdBanner> selectActiveAdBannerList()
    {
        return adBannerMapper.selectActiveAdBannerList();
    }

    /**
     * 新增广告图管理
     * 
     * @param adBanner 广告图管理
     * @return 结果
     */
    @Override
    @Transactional
    public int insertAdBanner(AdBanner adBanner)
    {
        return adBannerMapper.insertAdBanner(adBanner);
    }

    /**
     * 修改广告图管理
     * 
     * @param adBanner 广告图管理
     * @return 结果
     */
    @Override
    @Transactional
    public int updateAdBanner(AdBanner adBanner)
    {
        return adBannerMapper.updateAdBanner(adBanner);
    }

    /**
     * 批量删除广告图管理
     * 
     * @param ids 需要删除的广告图管理主键集合
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteAdBannerByIds(String ids)
    {
        return adBannerMapper.deleteAdBannerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除广告图管理信息
     * 
     * @param id 广告图管理主键
     * @return 结果
     */
    @Override
    @Transactional
    public int deleteAdBannerById(Long id)
    {
        return adBannerMapper.deleteAdBannerById(id);
    }

    /**
     * 校验广告标题是否唯一
     * 
     * @param adBanner 广告图信息
     * @return 结果
     */
    @Override
    public boolean checkTitleUnique(AdBanner adBanner)
    {
        AdBanner info = adBannerMapper.checkTitleUnique(adBanner.getTitle());
        if (StringUtils.isNotNull(info) && !info.getId().equals(adBanner.getId()))
        {
            return false;
        }
        return true;
    }

    /**
     * 批量更新状态
     * 
     * @param ids 广告图ID集合
     * @param status 状态
     * @return 结果
     */
    @Override
    @Transactional
    public int changeStatus(String ids, String status)
    {
        try
        {
            // 验证状态值是否有效
            if (!"0".equals(status) && !"1".equals(status)) {
                throw new ServiceException("状态值无效，只能是0（正常）或1（停用）");
            }
            
            String[] idArray = Convert.toStrArray(ids);
            
            for (String id : idArray) {
                AdBanner adBanner = new AdBanner();
                adBanner.setId(Convert.toLong(id));
                adBanner.setStatus(status);
                adBannerMapper.updateAdBanner(adBanner);
            }
            
            return idArray.length;
        }
        catch (Exception e)
        {
            throw new ServiceException("批量更新广告图状态失败：" + e.getMessage());
        }
    }
}