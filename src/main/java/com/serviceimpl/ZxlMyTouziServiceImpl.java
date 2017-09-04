package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ZxlMyTouziDao;
import com.entity.ZxlMyTouzi;
import com.service.ZxlMyTouziService;
@Service
public class ZxlMyTouziServiceImpl implements ZxlMyTouziService{
	@Autowired
	private ZxlMyTouziDao touzidao;
	/**
	 * ��ѯ���û�Ͷ�ʵ���Ŀ
	 */
	@Override
	public List<ZxlMyTouzi> listmytouzi() {
		List<ZxlMyTouzi> list=touzidao.listmytouzi();
		return list;
	}
}
