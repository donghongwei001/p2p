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
	public List<SzhProject> queryPart() {
		// TODO Auto-generated method stub
		return spd.queryPart();
	}

}
