package com.serviceimpl;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YpgRoleDao;
import com.entity.ypgHuanK;
import com.service.YpgRoleService;

@Service
public class YpgRoleServiecImpl implements YpgRoleService{
	@Autowired
	private YpgRoleDao role;
	
	/**
	 * ��ѯ��ɫ
	 */
	@Override
	public List<Map> getQueryRole() {
		// TODO Auto-generated method stub
		return role.queryRole();
	}
	
	/**
	 * ��ѯ������Ϣ
	 */
	@Override
	public List<Map> queryPersonals() {
		// TODO Auto-generated method stub
		return role.queryPersonals();
	}
	
	/**
	 * ��ѯ��̨��������
	 */
	@Override
	public List<Map> queryRepayMoney() {
		// TODO Auto-generated method stub
		return role.queryRepayMoney();
	}
	
	/**
	 * ��ѯ�����ϰ��
	 */
	@Override
	public List<Map> queryRepay() {
		// TODO Auto-generated method stub
		return role.queryRepay();
	}
	
	
}
