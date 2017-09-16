package com.service;

import java.util.List;

import com.entity.SzhProject;

public interface SzhProjectService {
	public List<SzhProject> queryProject();
	public List<SzhProject> queryPart(String comname);
	public List<SzhProject> queryUser(String user);
	public List<SzhProject> queryTime(String zzz,String hhh);
}
