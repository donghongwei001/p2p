package com.serviceimpl;

import java.text.SimpleDateFormat;
import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.DhwempDao;
import com.entity.DhwEmpTab;
import com.service.Dhwempservice;
@Service
public class Dhwempimpl implements Dhwempservice {

	@Autowired
	private DhwempDao dhwempdao;
	/*
	 * 查询所有的员工
	 *格式化时间
	 */
	@Override
	@Transactional
	public List<Map> queryemp() {
		// TODO Auto-generated method stub
		List<Map> list=dhwempdao.queryemp();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("ADDTIME"));
			list.get(i).put("time1", time);
			
		}
		return list;
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwempservice#selemp(java.lang.String)
	 * 根据名字查询某个员工
	 */
	@Override
	@Transactional
	public List<Map> selemp(String name) {
		// TODO Auto-generated method stub
		String rname="%"+name+"%";
		List<Map> list=dhwempdao.selemp(rname);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("ADDTIME"));
			list.get(i).put("time1", time);
			
		}
		return list;
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwempservice#addemp(com.entity.DhwEmpTab)
	 * 增加员工
	 */
	@Override
	@Transactional
	public void addemp(DhwEmpTab empTab) {
		// TODO Auto-generated method stub
		dhwempdao.addemp(empTab);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwempservice#deleteemp(int)
	 * 删除员工
	 */
	@Override
	@Transactional
	public void deleteemp(int id) {
		// TODO Auto-generated method stub
		dhwempdao.deleteemp(id);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.Dhwempservice#deleteemprole(int)
	 * 删除员工角色
	 */
	@Override
	@Transactional
	public void deleteemprole(int id) {
		// TODO Auto-generated method stub
		dhwempdao.deleteemprole(id);
	}
	/*
	 * 查询某个员工
	 * (non-Javadoc)
	 * @see com.service.Dhwempservice#seloneemp(int)
	 */
	@Override
	@Transactional
	public List<Map> seloneemp(int id) {
		// TODO Auto-generated method stub
		return dhwempdao.seloneemp(id);
	}
	/*
	 * 更改员工
	 * (non-Javadoc)
	 * @see com.service.Dhwempservice#updateemp(com.entity.DhwEmpTab)
	 */
	@Override
	@Transactional
	public void updateemp(DhwEmpTab empTab) {
		// TODO Auto-generated method stub
		dhwempdao.updateemp(empTab);
	}
	/*
	 * 更改员工角色
	 * (non-Javadoc)
	 * @see com.service.Dhwempservice#selemprole(int)
	 */
	@Override
	@Transactional
	public List<Map> selemprole(int id) {
		// TODO Auto-generated method stub
		return dhwempdao.selemprole(id);
	}
	/*
	 * 增加员工角色
	 * (non-Javadoc)
	 * @see com.service.Dhwempservice#addemprole(int, java.lang.String)
	 */
	@Override
	@Transactional
	public void addemprole(int id1, String id) {
		// TODO Auto-generated method stub
		dhwempdao.addemprole(id1, id);
	}
	

}
