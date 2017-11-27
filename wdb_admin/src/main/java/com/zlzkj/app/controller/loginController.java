package com.zlzkj.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zlzkj.app.service.AdminService;
import com.zlzkj.app.service.RoleService;
import com.zlzkj.core.base.BaseController;
import com.zlzkj.core.sql.Row;


@Controller
@RequestMapping("/public")
public class loginController extends BaseController{
	
	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value={"/adminlogin"})
	public String index(Model model) {
		
		model.addAttribute("status", 0);
		return "public/adminlogin";
	}
	
	@RequestMapping(value={"/loginCheck"})
	public String loginCheck(Model model,String account,String pwd,HttpSession session) throws Exception {
		List<Row> role=roleService.findRole(account, pwd);
		if(role.size()<=0){
			model.addAttribute("status", 1);
		return "public/adminlogin";
	}else{
		session.setAttribute("account",account);
		return "redirect:../system/main.action";
	}
	}
	
	@RequestMapping("/logout")
	public String loginout(HttpSession session,Model model)throws Exception{
		session.invalidate();
		model.addAttribute("status", 0);
		return "public/adminlogin";
	}   
}
