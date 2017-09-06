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
	//��һ����˲��뵽���ݿ�
	@Override
	public int addfirsts(YxFirsttable yf) {
		// TODO Auto-generated method stub
		return firdao.addfirst(yf);
	}
	//�ڶ�����˲��뵽���ݿ�
	@Override
	public int addseconds(YxFinaltable yt) {
		// TODO Auto-generated method stub
		return firdao.addsecond(yt);
	}
	//��һ����˳ɹ��������Ŀ��˱����״̬
	@Override
	public int update(YxExamine ym) {
		// TODO Auto-generated method stub
		int flag=firdao.update(ym);
		return flag;
	}
	//�ڶ�����˳ɹ�����µڶ������״̬
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
