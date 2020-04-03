package com.giligili.dao;

import com.giligili.entity.Swiper;

import java.util.List;

public interface SwiperMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Swiper record);

    int insertSelective(Swiper record);

    Swiper selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Swiper record);

    int updateByPrimaryKey(Swiper record);

    List<Swiper> listSwiper();
}