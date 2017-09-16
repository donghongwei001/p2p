package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.SzhProjectDao;
import com.entity.SzhProject;
import com.service.SzhProjectService;

@Service
public class SzhProjectServiceImpl implements SzhProjectService {
	@Autowired
	SzhProjectDao spd;
	@Override
	public List<SzhProject> queryProject() {
		// TODO Auto-generated method stub
		return spd.queryProject();
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

}
