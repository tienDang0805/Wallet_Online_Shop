package all.controller.user;

import java.util.List;

import javax.persistence.Entity;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Transactional
@Entity
@Controller
public class loginController {
	@Autowired
	SessionFactory factory;
	public String username = "admin";
	
	@RequestMapping("login")
	public String login() {
		return "user/login";
	}
	
	public boolean checkLogin(String username, String password) {
		Session ses = factory.getCurrentSession();
		String sql = "FROM User WHERE Username='" + username +"' AND Password='" + password + "'";
		Query q = ses.createQuery(sql);
		List<String> user = q.list();
		if(user.equals("")) {
			return false;
		}
		return true;
	}
	
	@RequestMapping("infoLogin") 
	public String showUser(ModelMap model, @RequestParam("username") String username, @RequestParam("password")String password) {
		System.out.println("im info");
		
		if(checkLogin(username, password) == false) {
			model.addAttribute("messageLogin", "Sai thong tin dang nhap");
			System.out.println(username);
			System.out.println(password);
			System.out.println("sai thong tin dang nhap");
			return "user/index";
		}
		else {
			model.addAttribute("messageLogin", "Dang nhap thanh cong");
			System.out.println("dang nhap dung");
			this.username = username;
			System.out.println(username);
			System.out.println(password);
		}
		return "user/index";
	}
}
