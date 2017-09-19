package com.web;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class fileUpload {	
	public String saveFiles(MultipartFile file ,HttpServletRequest request){
		//判断是否为空
		if (!file.isEmpty()) {		
			String fileName = file.getOriginalFilename();
			//System.out.println("文件路径"+request.getSession().getServletContext().getRealPath("/stucy/src/main/webapp/caoImage/"));
			//request.getSession().getServletContext().getRealPath("\\main\\webapp\\caoImage\\")
			String filePath ="E:/eclipsejava/p2p/src/main/webapp/tupian/" +new Date().getTime()+
					fileName.substring(fileName.lastIndexOf("."));
		    try {	
				
				file.transferTo(new File(filePath));//传送文件进路径(filePath)里			
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
