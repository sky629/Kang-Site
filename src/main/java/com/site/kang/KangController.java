package com.site.kang;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.site.kang.service.ChartService;

@Controller
public class KangController {
	
	@Autowired
	private ChartService chartService;
	
	@RequestMapping(value="/")
	public String index(HttpServletRequest request,
			HttpServletResponse response,
			ModelMap mm){

		mm.addAttribute("menu", chartService.getMenu());
		mm.addAttribute("realTimeChart", chartService.getRealTimeChart());
		mm.addAttribute("riseChart", chartService.getRiseChart());
		mm.addAttribute("dailyChart", chartService.getDailyChart());
		mm.addAttribute("weeklyChart", chartService.getWeeklyChart());
		mm.addAttribute("monthlyChart", chartService.getMonthlyChart());
		
		return "index";
	}
	
}
