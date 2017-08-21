package com.site.kang.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.site.kang.vo.topRank;
import com.site.kang.vo.Menu;

@Transactional
@Repository
@Mapper
public interface chartDAO {
	
	//menu
	@Select("SELECT * FROM admin.menu")
	List<Menu> getMenu();
	
	//Top100 chart
	@Select("SELECT * FROM admin.realTimeTopRank")
	List<topRank> getRealTimeChart();
	
	@Select("SELECT * FROM admin.riseTopRank")
	List<topRank> getRiseChart();
	
	@Select("SELECT * FROM admin.dailyTopRank")
	List<topRank> getDailyChart();
	
	@Select("SELECT * FROM admin.weeklyTopRank")
	List<topRank> getWeeklyChart();
	
	@Select("SELECT * FROM admin.monthlyTopRank")
	List<topRank> getMonthlyChart();
	
	
}
