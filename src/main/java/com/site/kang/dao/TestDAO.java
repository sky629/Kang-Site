package com.site.kang.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.site.kang.vo.RealTimeTopRank;
import com.site.kang.vo.Test;

@Transactional
@Repository
@Mapper
public interface TestDAO {
	
	@Select("SELECT * FROM admin.test")
	List<Test> selectAll();
	
	@Select("SELECT NOW()")
	String getCurrentDataTime();
	
	@Select("SELECT * FROM admin.realTimeTopRank")
	List<RealTimeTopRank> getRealTimeChart();
	
}
