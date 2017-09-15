package com.web;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.entity.ZxlMyPersonal;
import com.entity.ZxlMyProject;
import com.entity.ZxlTouzi;
import com.entity.ZxlUser;
import com.service.ZxlUserService;
/**
 * 控制层
 * @author ZXL
 *
 */
@Controller
@RequestMapping("/user")
public class ZxlUserController {
	@Autowired
	private ZxlUserService userservice;
	/**
	 * 查询用表的所有数据
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public void list(HttpServletRequest request){
		List<ZxlUser> list=userservice.list();
		request.setAttribute("user", list);
	}
	/**
	 * 用户的添加
	 * 注册
	 * @ResponseBody 将处理结果返回到前台
	 * @param str
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addUser(@RequestBody String str){
		ZxlUser student=JSON.parseObject(str, ZxlUser.class);
		/*用户名重复*/
		if(userservice.addUser(student)==0){  
			return "error";
		}
		else{
			return "success";  /*可以添加*/
		}
	}
	/**
	 * 用户的登录
	 * @ResponseBody 将处理结果返回到前台
	 * @param str
	 * @return
	 */
	@RequestMapping("/login")
	@ResponseBody
	public String login(@RequestBody String str,HttpServletRequest request,Model model){ 
	
		System.out.println(str);
		ZxlUser zu=JSON.parseObject(str, ZxlUser.class);
		request.getSession().setAttribute("abcd",zu.getUsername());
		request.getSession().setAttribute("login", zu);
        if(userservice.find(zu)) {
        	 return "Ok";  
        } 
        else{
        	return null;
        }
    } 
	/**
	 * 该用户的项目
	 * @param request
	 * @return
	 */
	@RequestMapping("/myproject")
	public ModelAndView listproject(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<ZxlMyProject> list=userservice.listproject(userna);		
		List<Map> list1=userservice.listprojecttwo(userna);
		List<Map> list2=userservice.selchushen(userna);
		List<Map> list3=userservice.selzhongshen(userna);
		ModelAndView model=new ModelAndView();
		model.addObject("project", list);
		model.addObject("list1", list1);
		model.addObject("list2", list2);
		model.addObject("list3", list3);
		model.setViewName("myproject");
		return model;
	}
	/**
	 *查询该用户所投资的项目
	 * @param request
	 * @return
	 */
	@RequestMapping("/mytouzi")
	public ModelAndView listmytouzi(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<Map> list=userservice.listmytouzi(userna);
		ModelAndView model=new ModelAndView();
		model.addObject("touzi", list);
		model.setViewName("mytouzi");
		return model;
	}
	
	/**
	 * 查询该用户未还款的项目
	 * @param request
	 * @return
	 */
/*  @RequestMapping("/myhuankuan")
	public String listhuankuan(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<ZxlMyHuankuan> list=userservice.listhuankuan(userna);
		request.setAttribute("huankuan", list);
		return "myhuankuan";
	}*/
	
	
	/**
	 * ǰ̨����
	 * @param hkuan
	 * @param request
	 * @return
	 */
	/*@RequestMapping("/myhuankuan")
	public String queryHuanK(ypgHuanK hkuan,HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		Map<Integer, BigDecimal> mapHK=userservice.queryHuanK(hkuan);
		request.setAttribute("mapHuank", mapHK);
		return "myhuankuan";
	}*/
	
	
	
	/**
	 * 查询该用户的基本信息
	 * 根据用户名
	 * @param request
	 * @return
	 */
	@RequestMapping("/mypersonal")
	public String listmypersonal(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");
		List<ZxlMyPersonal> list=userservice.listmypersonal(userna);
		request.setAttribute("mypersonal", list);
		return "mypersonal";		
	}
	/**
	 * 修改密码
	 * 确认旧密码
	 * 插入新密码
	 * @param pwd
	 * @param request
	 * @return
	 */
	@RequestMapping("/updatepwd")
	public String updatepwd(String str,ZxlUser pwd,HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");	
		System.out.println(userna+"*********************");
		List<ZxlUser> listz= userservice.updatepwd(userna);		
		request.setAttribute("updatepwd", listz);
		return "myupdatepwd";		
	}
	/**
	 * 查询发布项目
	 * @param request
	 * @return
	 */
	@RequestMapping("/listpro")
	public String listpro(HttpServletRequest request){	
		
		List<ZxlMyProject> list=userservice.listpro();
		request.setAttribute("listpro", list);
		return "index";	
	}
	/**
	 * 根据用户名查询用户余额
	 * session接受用户名
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("/zxlpersonal")
	public String listmoney(HttpServletRequest request){
		String userna =(String)request.getSession().getAttribute("abcd");	
		List<ZxlUser> listz= userservice.listmoney(userna);		
		request.setAttribute("listmoney", listz);	
		return "personal";	
	}
	/**
	 * 查询所有已发布的项目的项目到首页
	 * @param request
	 * @return
	 */
	@RequestMapping("/listtouzi")
	public String listtouzi(HttpServletRequest request){
		List<ZxlTouzi> list=userservice.listtouzi();
		request.setAttribute("listtouzi", list);
		return "zxltouzi";	
		}
	@RequestMapping("/chongzhi")
	@ResponseBody
	public void chongzhi(int jine,HttpSession session){
		String username=(String) session.getAttribute("abcd");
		
		userservice.updatejine(username,jine);
	}
	@RequestMapping("/tixian")
	@ResponseBody
	public void tixian(HttpSession session){
		String username=(String) session.getAttribute("abcd");
		userservice.updatezero(username);
	}
	@RequestMapping("/xiangqing")
	public ModelAndView xiangqing(HttpServletRequest request){
		Integer id=Integer.parseInt(request.getParameter("pid"));
		String name=(String) request.getSession().getAttribute("abcd");
		System.out.println(id);
		List<Map> list=userservice.seljiekuanren(id);
		List<Map> list1=userservice.selhuankuan(name, id);
		ModelAndView model=new ModelAndView();
		model.addObject("jiekuan", list);
		model.addObject("jiekuanxiangqing", list1);
		model.setViewName("xiangmuxiangqing");
		return model;
		
	}
}
