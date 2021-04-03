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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import all.entity.Category;

@Transactional
@Entity
@Controller
public class detailController {
	@Autowired
	SessionFactory factory;
	public List<Category> list;
	private int id;
	private int idorder;
	private int idcate;
	
	@RequestMapping("detail/{idcate}")
	public String detail(ModelMap model, @PathVariable("idcate")int idcate) {
		Session ses = factory.getCurrentSession();
		this.idcate = idcate;
		String sql = "FROM Category WHERE IDCATE=:idcate";	
		Query q = ses.createQuery(sql);
		q.setParameter("idcate", idcate);
		list = q.list();
		return "redirect:/product.htm";
	}
	
	@RequestMapping("product")
	public String index(ModelMap model) {
		model.addAttribute("detail", list);
		return "user/product";
	}
	
	
	@RequestMapping("addToCart") 
	public String addCart(ModelMap model, @RequestParam("soluong") int soluong) {
		Session ses = factory.getCurrentSession();
		Session open = factory.openSession();
		loginController log = new loginController();
		String username = log.username;
		String sql = "EXEC SP_TIMIDUSER '" + username + "'";
		Query q = ses.createSQLQuery(sql);
		List<Integer> ID = q.list();
		if(ID.isEmpty()) {
			sql = "EXEC SP_LAYID '" + username + "'";
			q = ses.createSQLQuery(sql);
			ID = q.list();
			id = ID.get(0);
			
			sql = "INSERT INTO ORDERS (ID) VALUES (id)";
			q.setParameter("id", id);
			q = open.createQuery(sql);
			q.executeUpdate();
		}
		else {
			id = ID.get(0);
		}
		
		sql = "EXEC SP_TIMIDORDER " + id;
		q = ses.createSQLQuery(sql);
		ID = q.list();
		idorder = ID.get(0);
		 
		sql = "INSERT INTO Detail (order.idorder, category.idcate) ";

//		q.setParameter("idorder", idorder);
//		q.setParameter("idcate", idcate);
		q = open.createQuery(sql);
		q.executeUpdate();
		
		model.addAttribute("detail", list);
		return "user/product";
	}
	
}
