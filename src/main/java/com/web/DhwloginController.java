package com.web;



import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.aop.AuthenticatedAnnotationHandler;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.entity.DhwEmpTab;

@Controller
@RequestMapping("/emp")
public class DhwloginController {

	@RequestMapping("/login")
	public String login_back(String username,String password,HttpServletResponse response,HttpServletRequest request){
		//��õ�ǰ�û�����
		response.setContentType("text/html;charset=UTF-8");//���÷��ر����ʽ
		System.out.println(username+password);
		
		Subject subject=SecurityUtils.getSubject();
		AuthenticationToken token=new UsernamePasswordToken(username,password);
		System.out.println("11111");
		try {
			subject.login(token);
		} catch (UnknownAccountException e) {
			// TODO: handle exception
			System.out.println("aaasss"+e.getMessage());
			/*try {
				
				response.getWriter().write(JSON.toJSONString("û�и��û�!"));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				
			}*/
			return "redirect:../login.jsp";
		}catch(Exception e){
			e.getMessage();//�û��������
			
			/*try {
				
				response.getWriter().write(JSON.toJSONString("�û��������!"));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				System.out.println("aaa"+e1.getMessage());
				
			}*/
			return "redirect:../login.jsp";
		}
		try {
			DhwEmpTab user =(DhwEmpTab) subject.getPrincipal();//�����Ȩʱ������û�
			request.getSession().setAttribute("user",user);//���û�����Session

			return "redirect:../admin/index.jsp";
			/*response.getWriter().write(JSON.toJSONString("��¼�ɹ�!"));
			response.getWriter().flush();
			response.getWriter().close();*/
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			System.out.println("ssss"+e1.getMessage());
			
		}
		
		return "redirect:../login.jsp";
		
	}

	private Object getText(String string) {
		// TODO Auto-generated method stub
		return null;
	}
}
