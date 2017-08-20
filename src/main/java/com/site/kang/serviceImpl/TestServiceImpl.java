package com.site.kang.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.kang.dao.TestDAO;
import com.site.kang.service.TestService;
import com.site.kang.vo.RealTimeTopRank;
import com.site.kang.vo.Test;

@Service
public class TestServiceImpl implements TestService{
	
	@Autowired
	private TestDAO testDAO;
	
	@Override
	public List<Test> selectAll(){
		return testDAO.selectAll();
	}
	
	@Override
	public String getCurrentDataTime(){
		return testDAO.getCurrentDataTime();
	}

	@Override
	public List<RealTimeTopRank> getRealTimeChart() {
		return testDAO.getRealTimeChart();
	}
	
}
