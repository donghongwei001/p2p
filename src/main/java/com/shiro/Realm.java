spackage com.shiro;

import java.util.HashMap;
import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.dao.DhwloginDao;
import com.entity.DhwEmpTab;

public class Realm extends AuthorizingRealm{

	@Autowired
	private DhwloginDao  dhwloginDao;//调用用户DAO接口
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken upToken =(UsernamePasswordToken) token;
		String userName = upToken.getUsername();//从令牌中获得用户名称
		DhwEmpTab dhwEmpTab=dhwloginDao.queryUser(userName);
		System.out.println("1111111111");
		System.out.println(dhwEmpTab);
		if(dhwEmpTab==null){
			throw new UnknownAccountException();//用户名不存在
		}else{
			
			String password = dhwEmpTab.getEmppwd();//获得数据库用户密码
			
			/**创建简单认证信息
			 * 参数一：签名:程序可以在任意位置获取当前放入的对象
			 * 参数二：从数据库中查询出的密码
			 * 参数三：当前realm的名称
			 */
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(dhwEmpTab,password,this.getClass().getSimpleName());
		
			return info;//返回给安全管理器 ，由安全管理器比对密码	
		}
	}
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection PC) {
		// TODO Auto-generated method stub
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		DhwEmpTab user =(DhwEmpTab)PC.getPrimaryPrincipal();
		/*System.out.println("111111111");
		System.out.println(user);
		List<HashMap<String,Object>> userMap = dhwloginDao.queryrolepower(user);
		for(int i=0;i<userMap.size();i++){
			info.addStringPermission(userMap.get(i).get("CODE").toString());
		}*/
		info.addStringPermission("staff");
		return info;
	}

	
	
}
