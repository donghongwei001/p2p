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
	 * ��ѯ���е�Ա��
	 *��ʽ��ʱ��
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
	 * �������ֲ�ѯĳ��Ա��
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
	 * ����Ա��
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
	 * ɾ��Ա��
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
	 * ɾ��Ա����ɫ
	 */
	@Override
	@Transactional
	public void deleteemprole(int id) {
		// TODO Auto-generated method stub
		dhwempdao.deleteemprole(id);
	}
	/*
	 * ��ѯĳ��Ա��
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
	 * ����Ա��
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
	 * ����Ա����ɫ
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
	 * ����Ա����ɫ
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
