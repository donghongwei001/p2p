package com.web;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class fileUpload {	
	public String saveFiles(MultipartFile file ,HttpServletRequest request){
		//�ж��Ƿ�Ϊ��
		if (!file.isEmpty()) {		
			String fileName = file.getOriginalFilename();
			//System.out.println("�ļ�·��"+request.getSession().getServletContext().getRealPath("/stucy/src/main/webapp/caoImage/"));
			//request.getSession().getServletContext().getRealPath("\\main\\webapp\\caoImage\\")
			String filePath ="E:/tupian/" +new Date().getTime()+
					fileName.substring(fileName.lastIndexOf("."));
		    try {	
				
				file.transferTo(new File(filePath));//�����ļ���·��(filePath)��			
				return filePath;
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
}
