package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YxFirsttableDao;
import com.entity.YxFinaltable;
import com.entity.YxFirsttable;
import com.service.YxFirsttableService;
@Service
public class YxFirsttableServiceImpl implements YxFirsttableService {
	@Autowired
	private YxFirsttableDao firdao;
	@Override
	public int addfirsts(YxFirsttable yf) {
		// TODO Auto-generated method stub
		return firdao.addfirst(yf);
	}
	@Override
	public int addseconds(YxFinaltable yt) {
		// TODO Auto-generated method stub
		return firdao.addsecond(yt);
	}
	@Override
	public int update(YxFirsttable yf) {
		// TODO Auto-generated method stub
		int flag=firdao.update(yf);
		return flag;
	}

}
