package com.site.kang;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.site.kang.service.TestService;

@Controller
public class KangController {
	
	@Autowired
	private TestService testService;
	
	@RequestMapping(value="/")
	public String index(HttpServletRequest request,
			HttpServletResponse response,
			ModelMap mm){
		
				
//		System.out.println(testService.getCurrentDataTime());
		mm.addAttribute("time" ,testService.getCurrentDataTime());
		mm.addAttribute("item", testService.selectAll());
		mm.addAttribute("realTimeChart", testService.getRealTimeChart());
		
		return "index";
	}
	
}
