package com.site.kang.service;

import java.util.List;

import com.site.kang.vo.topRank;
import com.site.kang.vo.Menu;

public interface ChartService {
	
	//menu
	List<Menu> getMenu();
	
	//Top100 chart
	List<topRank> getRealTimeChart();
	
	List<topRank> getRiseChart();
	
	List<topRank> getDailyChart();
	
	List<topRank> getWeeklyChart();
	
	List<topRank> getMonthlyChart();
}
