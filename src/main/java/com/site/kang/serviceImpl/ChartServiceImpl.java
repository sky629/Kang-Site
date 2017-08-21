package com.site.kang.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.kang.dao.chartDAO;
import com.site.kang.service.ChartService;
import com.site.kang.vo.topRank;
import com.site.kang.vo.Menu;

@Service
public class ChartServiceImpl implements ChartService{
	
	@Autowired
	private chartDAO chartDAO;
	
	
	//menu
	@Override
	public List<Menu> getMenu(){
		return chartDAO.getMenu();
	}
	
	// Top100 chart 
	@Override
	public List<topRank> getRealTimeChart() {
		return chartDAO.getRealTimeChart();
	}

	@Override
	public List<topRank> getRiseChart() {
		return chartDAO.getRiseChart();
	}

	@Override
	public List<topRank> getDailyChart() {
		return chartDAO.getDailyChart();
	}

	@Override
	public List<topRank> getWeeklyChart() {
		return chartDAO.getWeeklyChart();
	}

	@Override
	public List<topRank> getMonthlyChart() {
		return chartDAO.getMonthlyChart();
	}

	
}
