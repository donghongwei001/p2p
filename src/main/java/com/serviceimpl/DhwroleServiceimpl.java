package com.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.DhwroleDao;
import com.entity.Power;
import com.entity.Role;
import com.service.DhwroleService;
@Service
public class DhwroleServiceimpl implements DhwroleService{

	@Autowired
	private DhwroleDao dhwroledao;
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#selectrole()
	 * ��ѯ���н�ɫ
	 */
	@Override
	@Transactional
	public List<Map> selectrole() {
		// TODO Auto-generated method stub
		return dhwroledao.selectrole();
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#queryrole(java.lang.String)
	 * ��ѯĳ����ɫ
	 */
	@Override
	@Transactional
	public List<Map> queryrole(String id) {
		// TODO Auto-generated method stub
		return dhwroledao.queryrole(id);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#selectpower(java.lang.String)
	 * ��ѯĳ����ɫ������Ȩ��
	 */
	@Override
	@Transactional
	public List<Map> selectpower(String id) {
		// TODO Auto-generated method stub
		return dhwroledao.selectpower(id);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#selectson(java.lang.String)
	 * ��ѯĳ��Ȩ�޵���Ȩ��
	 */
	@Override
	@Transactional
	public List<Map> selectson(String id) {
		// TODO Auto-generated method stub
		return dhwroledao.selectson(id);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#addrole(com.entity.Role)
	 * ���ӽ�ɫ
	 */
	@Override
	@Transactional
	public int addrole(Role role) {
		// TODO Auto-generated method stub
		return dhwroledao.addrole(role);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#addrolepower(java.lang.String, java.lang.String)
	 * ����һ����ɫ��Ȩ��
	 */
	@Override
	@Transactional
	public void addrolepower(String roleid, String powerid) {
		// TODO Auto-generated method stub
		dhwroledao.addrolepower(roleid, powerid);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#selrolepower(java.lang.String)
	 * ������ɫ������Ȩ��
	 */
	@Override
	@Transactional
	public List<Map> selrolepower(String id) {
		// TODO Auto-generated method stub
		return dhwroledao.selrolepower(id);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#selonerolepower(java.lang.String, java.lang.String)
	 * ����һ����ɫ������Ȩ��
	 */
	@Override
	@Transactional
	public List<Map> selonerolepower(String roleid, String powerid) {
		// TODO Auto-generated method stub
		return dhwroledao.selonerolepower(roleid, powerid);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#updaterole(com.entity.Role)
	 * ���Ľ�ɫ
	 */
	@Override
	@Transactional
	public void updaterole(Role role) {
		// TODO Auto-generated method stub
		dhwroledao.updaterole(role);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#deleterole(java.lang.String)
	 * ɾ��һ����ɫ
	 */
	@Override
	@Transactional
	public void deleterole(String id) {
		// TODO Auto-generated method stub
		dhwroledao.deleterole(id);
	}
	/*
	 * (non-Javadoc)
	 * @see com.service.DhwroleService#deleterolepower(java.lang.String)
	 * ɾ��һ����ɫ������Ȩ��
	 */
	@Override
	@Transactional
	public void deleterolepower(String id) {
		// TODO Auto-generated method stub
		dhwroledao.deleterolepower(id);
	}
	
}
