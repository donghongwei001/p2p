package com.serviceimpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.dhwrongziDao;
import com.entity.Page;
import com.entity.Pageresult;
import com.service.DhwrongziService;

@Service
public class DhwrongziServiceimpl implements DhwrongziService {

	@Autowired
	private dhwrongziDao dhwrongzidao;
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwrolepowerservice#queryPower()
	 * 查询所有融资项目
	 */
	@Override
	@Transactional
	public List<Map> queryall() {
		// TODO Auto-generated method stub
		List<Map> list=dhwrongzidao.queryall();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("TIME"));
			list.get(i).put("time1", time);
			
		}
		return list;
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwrolepowerservice#queryPower()
	 * 查询某个项目
	 */
	@Override
	@Transactional
	public List<Map> queryprojectone(String  str) {
		// TODO Auto-generated method stub
		return dhwrongzidao.queryprojectone(str);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwrolepowerservice#queryPower()
	 * 根据时间查询某个项目
	 */
	@Override
	@Transactional
	public List<Map> queryprojecttwo(Date str1, Date str2) {
		// TODO Auto-generated method stub
		return dhwrongzidao.queryprojecttwo(str1, str2);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwrolepowerservice#queryPower()
	 * 根据时间，名字查询某个项目
	 */
	@Override
	@Transactional
	public List<Map> queryprojectthr(Date str1, Date str2, String str3) {
		// TODO Auto-generated method stub
		return dhwrongzidao.queryprojectthr(str1, str2, str3);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwrolepowerservice#queryPower()
	 * 查询项目详情
	 */
	@Override
	@Transactional
	public List<Map> selxiangqing(int id) {
		// TODO Auto-generated method stub
		List<Map> list=dhwrongzidao.selxiangqing(id);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("TIME"));
			list.get(i).put("time1", time);
			
		}
		return list;
	}
	@Override
	public List<Map> queryproject(Date str1, Date str2, String str3) {
		// TODO Auto-generated method stub
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		if (!str3.equals("")&&str1.equals("")&&str2.equals("")) {
			String rname="%"+str3+"%";
			System.out.println(rname);
			List<Map> list= dhwrongzidao.queryprojectone(rname);
			for (int i = 0; i < list.size(); i++) {
				String time=simpleDateFormat.format(list.get(i).get("TIME"));
				list.get(i).put("time1", time);
				
			}
			return list;
		}
		if (str3.equals("")&&!str1.equals("")&&!str2.equals("")) {
			List<Map> list=dhwrongzidao.queryprojecttwo(str1, str2);
			for (int i = 0; i < list.size(); i++) {
				String time=simpleDateFormat.format(list.get(i).get("TIME"));
				list.get(i).put("time1", time);
				
			}
			
			return list;
		}
		if (!str3.equals("")&&!str1.equals("")&&!str2.equals("")) {
			
			String rname="%"+str3+"%";
			List<Map> list=dhwrongzidao.queryprojectthr(str1, str2, rname);
			for (int i = 0; i < list.size(); i++) {
				String time=simpleDateFormat.format(list.get(i).get("TIME"));
				list.get(i).put("time1", time);
				
			}
			return list;
		}
		return null;
	}
	

}
