package com.site.kang.service;

import java.util.List;

import com.site.kang.vo.RealTimeTopRank;
import com.site.kang.vo.Test;

public interface TestService {
	
	List<Test> selectAll();
	
	String getCurrentDataTime();
	
	List<RealTimeTopRank> getRealTimeChart();
}
