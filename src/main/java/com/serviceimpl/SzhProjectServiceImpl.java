package com.serviceimpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.dao.SzhProjectDao;
import com.entity.SzhPage;
import com.entity.SzhProject;
import com.service.SzhProjectService;

@Service
public class SzhProjectServiceImpl implements SzhProjectService {
	@Autowired
	SzhProjectDao spd;
	@Override
	public Map<String,Object> queryProject(SzhPage page) {
		int startIndex = (page.getPage()-1) * page.getRows();
		int endIndex = page.getPage() * page.getRows() + 1;
		page.setStartIndex(startIndex);
		page.setEndIndex(endIndex);
		List<Map<String,Object>> lsp=spd.queryProject(page);
		int toatl=spd.queryitempersonCount();
		/*Map<String,Object> ms=new HashMap<String,Object>();
		ms.put("startIndex",startIndex);
		ms.put("endIndex", endIndex);*/
		Map<String,Object> ms1=new HashMap<String,Object>();
		ms1.put("total",toatl);
		ms1.put("rows",lsp);
		
		return ms1;
	}
	@Override
	public List<SzhProject> queryPart(String comname) {
		// TODO Auto-generated method stub
		return spd.queryPart(comname);
	}
	@Override
	public List<SzhProject> queryUser(String user) {
		// TODO Auto-generated method stub
		return spd.queryUser(user);
	}
	@Override
	public List<SzhProject> queryTime(String zzz, String hhh) {
		// TODO Auto-generated method stub
		return spd.queryTime(zzz, hhh);
	}
	@Override
	public String queryAll() {
		// TODO Auto-generated method stub
		List<Map> result = spd.queryAll();
		System.out.println(result);
		List data1=new ArrayList();
		List data2=new ArrayList();
		List data3=new ArrayList();		
		Map time1 = new HashMap();
		Map time2 = new HashMap();
		Map time3 = new HashMap();
		List<Map> series= new ArrayList<Map>();
		//取值
		for (int i = 0; i < result.size(); i++) {
			result.get(i).get("PROJECTNAME");
			result.get(i).get("LIFELOAN");
			result.get(i).get("RATEMONEY");
			
			data1.add(result.get(i).get("PROJECTNAME"));
			data2.add(result.get(i).get("LIFELOAN"));
			data3.add(result.get(i).get("RATEMONEY"));
		}
		//放入数据数组
		time1.put("one", data1);
		time2.put("two", data2);
		time3.put("three", data3);
		series.add(time1);
		series.add(time2);
		series.add(time3);
		//返回
		return JSON.toJSONString(series);
		/*List categories= new ArrayList();
		List data=new ArrayList();
		
		List<Map> series= new ArrayList<Map>();
		Map time = new HashMap();
		//取值
		for (int i = 0; i < result.size(); i++) {
			System.out.println(result.get(i).getClass());
			result.get(i).get("PROJECTNAME");
			result.get(i).get("MONEY");
			
			categories.add(	result.get(i).get("PROJECTNAME"));
			data.add(result.get(i).get("PROJECTNAME"));
			data.add(result.get(i).get("MONEY"));
		}
		//放入数据数组
		time.put("name", "项目名称");
		time.put("data", data);
		series.add(time);
		
		//返回的总MAP
		Map Jsonmap=new HashMap();
		Jsonmap.put("categories", categories);
		Jsonmap.put("series", series);
		
		return JSON.toJSONString(Jsonmap);
		return JSON.toJSONString(series);*/
	}
	@Override
	public String queryAllTwo() {
		// TODO Auto-generated method stub
		List<Map> result = spd.queryAll();
		List data1=new ArrayList();
		List data2=new ArrayList();
		Map time = new HashMap();
		List<Map> series= new ArrayList<Map>();
		//取值
		for (int i = 0; i < result.size(); i++) {
			result.get(i).get("PROJECTNAME");
			result.get(i).get("MONEY");
					
			data1.add(result.get(i).get("PROJECTNAME"));
			data2.add(result.get(i).get("MONEY"));
		}
		//放入数据数组
		time.put("data1", data1);
		time.put("data2", data2);
		series.add(time);
		return JSON.toJSONString(series);
	}
}
