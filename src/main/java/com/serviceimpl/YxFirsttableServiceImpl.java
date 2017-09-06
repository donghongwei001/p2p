package com.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.YxFirsttableDao;
import com.entity.YxExamine;
import com.entity.YxFabu;
import com.entity.YxFinaltable;
import com.entity.YxFirst;
import com.entity.YxFirsttable;
import com.service.YxFirsttableService;
@Service
public class YxFirsttableServiceImpl implements YxFirsttableService {
	@Autowired
	private YxFirsttableDao firdao;
	//第一次审核插入到数据库
	@Override
	public int addfirsts(YxFirsttable yf) {
		// TODO Auto-generated method stub
		return firdao.addfirst(yf);
	}
	//第二次审核插入到数据库
	@Override
	public int addseconds(YxFinaltable yt) {
		// TODO Auto-generated method stub
		return firdao.addsecond(yt);
	}
	//第一次审核成功后更新项目审核表审核状态
	@Override
	public int update(YxExamine ym) {
		// TODO Auto-generated method stub
		int flag=firdao.update(ym);
		return flag;
	}
	//第二次审核成功后更新第二次审核状态
	@Override
	public int updates(YxFirsttable yx) {
		// TODO Auto-generated method stub
		int flag=firdao.updatesecond(yx);
		return flag;
	}
	@Override
	public int addfa(YxFabu yb) {
		// TODO Auto-generated method stub
		return firdao.addfabu(yb);
	}

}
