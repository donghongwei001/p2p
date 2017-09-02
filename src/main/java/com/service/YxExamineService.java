package com.service;

import java.util.List;

import com.entity.Outtime;
import com.entity.YxExamine;
import com.entity.YxFirst;

public interface YxExamineService {
	List<YxExamine>queryexam();
	List<Outtime> queryx();
	List<YxFirst>queryftt();
} 
