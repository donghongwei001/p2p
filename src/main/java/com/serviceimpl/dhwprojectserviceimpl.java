package com.serviceimpl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.dhwprojectdao;
import com.service.dhwprojectService;

@Service
public class dhwprojectserviceimpl implements dhwprojectService {

	
	@Autowired
	private dhwprojectdao dhwprojectdao;
	/*
	 * (non-Javadoc)
	 * @see com.service.dhwprojectService#selectproject()
	 * ��ѯ��Ŀ
	 */
	@Override
	@Transactional
	public List<Map> selectproject() {
		// TODO Auto-generated method stub
		return dhwprojectdao.selectproject();
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.dhwprojectService#queryprojectone(java.lang.String)
	 * �������ֲ�ѯ
	 */
	@Override
	@Transactional
	public List<Map> queryprojectone(String str) {
		// TODO Auto-generated method stub
		return dhwprojectdao.queryprojectone(str);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.dhwprojectService#queryprojecttwo(java.util.Date, java.util.Date)
	 * ����ʱ���ѯ��Ŀ
	 */
	@Override
	@Transactional
	public List<Map> queryprojecttwo(Date s1, Date s2) {
		// TODO Auto-generated method stub
		return dhwprojectdao.queryprojecttwo(s1, s2);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.dhwprojectService#queryall(java.util.Date, java.util.Date, java.lang.String)
	 * ����ʱ�����ֲ�ѯ��Ŀ
	 */
	@Override
	@Transactional
	public List<Map> queryall(Date s1, Date s2, String name) {
		// TODO Auto-generated method stub
		return dhwprojectdao.queryall(s1, s2, name);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.dhwprojectService#selxiangqing(int)
	 * ��ѯ��Ŀ����
	 */
	@Override
	@Transactional
	public List<Map> selxiangqing(int id) {
		// TODO Auto-generated method stub
		return dhwprojectdao.selxiangqing(id);
	}

}
