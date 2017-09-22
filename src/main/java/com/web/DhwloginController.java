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
	/*
	 * �����û���Ȩ
	 */
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
			String rolename=dhwloginDao.queryrolename(user.getEmpid());
			int shulliang=dhwloginDao.selxiajia();
			List<Map> list=dhwloginDao.queryxiajia();
			int money=dhwloginDao.selmoney();
			int index=0;
			for (int i = 0; i < list.size(); i++) {
				String time=list.get(i).get("TIME").toString().substring(0, 4);
				 double d=Double.valueOf(time).doubleValue();
				if (d>=7) {
					index=index+1;
				}
			}
			index=index+shulliang+money;
			request.getSession().setAttribute("xiajia", index);
			int count=dhwloginDao.querycount();
			request.getSession().setAttribute("count", count);
			request.getSession().setAttribute("rolename", rolename);
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
	/*
	 * ��ѯ�û�
	 * ʵ�з�ҳ
	 */
	@RequestMapping("/query")
	@ResponseBody
	public Pageresult queryemp(Integer page,Integer rows){
		int page1=page;
		int rows1=rows;
		List<Map> list=Dhwempservice.queryemp();
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	}
	/*
	 * ģ����ѯԱ��
	 */
	@RequestMapping("/sel")
	@ResponseBody
	public Pageresult selemp(Integer page,Integer rows,HttpServletRequest request){
		int page1=page;
		int rows1=rows;
		String name=request.getParameter("name");
		List<Map> list=Dhwempservice.selemp(name);
		Page<Map> paging=new Page<Map>();
		List<Map> list1=paging.paging(list,rows1,page1);
		System.out.println(list1.size());
		Pageresult<Map> pResult=new Pageresult<Map>();
		
		pResult.setTotal(list.size());
		pResult.setRows(list1);
		return pResult;
	}
	/*
	 * ����Ա��
	 */
	@RequestMapping("/add")
	@ResponseBody
	public void addemp(DhwEmpTab empTab){
		Dhwempservice.addemp(empTab);
	}
	/*
	 * ɾ��Ա��
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteemp(int id){
		Dhwempservice.deleteemprole(id);
		Dhwempservice.deleteemp(id);
	}
	/*
	 * ����ĳ��Ա��
	 */
	@RequestMapping("/selone")
	@ResponseBody
	public List<Map>  seloneemp(int id){
		List<Map> list=Dhwempservice.seloneemp(id);
		return list;
	}
	/*
	 * ����ĳ��Ա��
	 */
	@RequestMapping("/updateemp")
	@ResponseBody
	public void updateemp(DhwEmpTab empTab){
		Dhwempservice.updateemp(empTab);
	}
}
