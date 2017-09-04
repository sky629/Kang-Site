package com.site.kang;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.site.kang.service.ChartService;
import com.site.kang.vo.topRank;

@Controller
public class KangController {
	
	@Autowired
	private ChartService chartService;
	
	List<topRank> realTime;
	
	@RequestMapping(value="/")
	public String index(HttpServletRequest request,
			HttpServletResponse response,
			ModelMap mm){
		
		realTime = chartService.getRealTimeChart();
		mm.addAttribute("menu", chartService.getMenu());
		mm.addAttribute("realTimeChart", realTime);
		mm.addAttribute("playList", getPlayList(realTime));
		
		return "index";
	}
	
	//make top 100 chart playlist
	public String getPlayList(List<topRank> chart){
		String allChart = "https://www.youtube.com/embed/";
		boolean checkFirst = true;
		for(Iterator<topRank> itr = realTime.iterator(); itr.hasNext();){
			if(checkFirst == true){
				allChart += itr.next().getUrl().split("/embed/")[1] + "?rel=0&autoplay=1;playlist=";
				checkFirst = false;
			}
			allChart += itr.next().getUrl().split("/embed/")[1] + ",";
		}		
		allChart = allChart.substring(0, allChart.length() - 1);
		
		return allChart;
	}
	
}
