package com.dcone.dtss;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.dcone.dtss.model.dc_user;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	SqlSessionFactoryBean sqlSessionFactory;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		logger.info(formattedDate);
		return "home";
	}
	
	@RequestMapping("/upload")
	public String upload(@RequestParam(value = "file", required = false) CommonsMultipartFile[] files,Model model,HttpServletRequest request) {
		int i = files.length;
		model.addAttribute("count", i);
		String dest = request.getSession().getServletContext().getRealPath("/upload/");
		for(CommonsMultipartFile temp : files) {
			long l = System.currentTimeMillis();
			try {
				if(!temp.isEmpty())
					temp.transferTo(new File(dest + l+temp.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		model.addAttribute("path", dest);
		
		return "list";
	}
	@RequestMapping("/mybatis") 
	public String batisTest() {
		SqlSession sqlSession=null;
		logger.info(sqlSessionFactory.toString());
		try {
			SqlSessionFactory factory = sqlSessionFactory.getObject();
			sqlSession =  factory.openSession();
			logger.info(sqlSession.toString());
			dc_user user =  sqlSession.selectOne("com.dcone.dtss.model.UserMapper.selectUserByID", 1);
			logger.info(user.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return "list";
	}
}
