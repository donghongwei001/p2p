package com.web;



import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.aop.AuthenticatedAnnotationHandler;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.dao.DhwloginDao;
import com.entity.DhwEmpTab;
import com.entity.Page;
import com.entity.Pageresult;
import com.service.Dhwempservice;

@Controller
@RequestMapping("/emp")
public class DhwloginController {

	@Autowired
	private DhwloginDao  dhwloginDao;
	@Autowired
	private Dhwempservice Dhwempservice;
	@RequestMapping("/login")
	public String login_back(String username,String password,HttpServletResponse response,HttpServletRequest request){
		//获得当前用户对象
		response.setContentType("text/html;charset=UTF-8");//设置返回编码格式
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
				
				response.getWriter().write(JSON.toJSONString("没有该用户!"));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				
			}*/
			return "redirect:../login.jsp";
		}catch(Exception e){
			e.getMessage();//用户密码错误
			
			/*try {
				
				response.getWriter().write(JSON.toJSONString("用户密码错误!"));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				System.out.println("aaa"+e1.getMessage());
				
			}*/
			return "redirect:../login.jsp";
		}
		try {
			DhwEmpTab user =(DhwEmpTab) subject.getPrincipal();//获得授权时放入的用户
			String rolename=dhwloginDao.queryrolename(user.getEmpid());
			int count=dhwloginDao.querycount();
			request.getSession().setAttribute("count", count);
			request.getSession().setAttribute("rolename", rolename);
			request.getSession().setAttribute("user",user);//将用户放入Session
			return "redirect:../admin/index.jsp";
			/*response.getWriter().write(JSON.toJSONString("登录成功!"));
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
	@RequestMapping("/query")
	@ResponseBody
	public Pageresult queryemp(Integer page,Integer rows){
		int page1=page;
		int rows1=rows;
		List<Map> list=Dhwempservice.queryemp();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("ADDTIME"));
			list.get(i).put("time1", time);
			
		}
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	}
	@RequestMapping("/sel")
	@ResponseBody
	public Pageresult selemp(Integer page,Integer rows,HttpServletRequest request){
		int page1=page;
		int rows1=rows;
		String name=request.getParameter("name");
		String rname="%"+name+"%";
		List<Map> list=Dhwempservice.selemp(rname);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		for (int i = 0; i < list.size(); i++) {
			String time=simpleDateFormat.format(list.get(i).get("ADDTIME"));
			list.get(i).put("time1", time);
			
		}
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	}
	@RequestMapping("/add")
	@ResponseBody
	public void addemp(DhwEmpTab empTab){
		System.out.println(empTab);
		Dhwempservice.addemp(empTab);
		
		
	}
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteemp(int id){
		Dhwempservice.deleteemprole(id);
		Dhwempservice.deleteemp(id);
		System.out.println(id);
	}
	@RequestMapping("/selone")
	@ResponseBody
	public List<Map>  seloneemp(int id){
		List<Map> list=Dhwempservice.seloneemp(id);
		return list;
	}
	@RequestMapping("/updateemp")
	@ResponseBody
	public void updateemp(DhwEmpTab empTab){
		Dhwempservice.updateemp(empTab);
	}
}
