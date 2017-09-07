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
	private DhwloginDao  dhwloginDao;//�����û�DAO�ӿ�
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken upToken =(UsernamePasswordToken) token;
		String userName = upToken.getUsername();//�������л���û�����
		DhwEmpTab dhwEmpTab=dhwloginDao.queryUser(userName);
		System.out.println("1111111111");
		System.out.println(dhwEmpTab);
		if(dhwEmpTab==null){
			throw new UnknownAccountException();//�û���������
		}else{
			
			String password = dhwEmpTab.getEmppwd();//������ݿ��û�����
			
			/**��������֤��Ϣ
			 * ����һ��ǩ��:�������������λ�û�ȡ��ǰ����Ķ���
			 * �������������ݿ��в�ѯ��������
			 * ����������ǰrealm������
			 */
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(dhwEmpTab,password,this.getClass().getSimpleName());
		
			return info;//���ظ���ȫ������ ���ɰ�ȫ�������ȶ�����	
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
