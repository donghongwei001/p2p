package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ZxlMyProjectDao;
import com.entity.ZxlMyProject;
import com.service.ZxlMyProjectService;
@Service
public class ZxlMyProjectServiceImpl implements ZxlMyProjectService{
	@Autowired
	private ZxlMyProjectDao projectdao;
	/**
	 * 查询该用户的申请的项目
	 */
	@Override
	public List<ZxlMyProject> listproject() {
		List<ZxlMyProject> list=projectdao.listproject();
		return list;
	}
}
