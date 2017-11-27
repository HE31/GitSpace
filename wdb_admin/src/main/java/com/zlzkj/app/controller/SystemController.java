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
@RequestMapping("/system")
public class SystemController extends BaseController{
	
	
	
	@RequestMapping(value={"/showpic"})
	public String index(Model model) {
		return "system/showpic";
	}
	

		
		
		@RequestMapping(value={"/main"})
		public String main(Model model) {
			return "system/main";
		}
}
