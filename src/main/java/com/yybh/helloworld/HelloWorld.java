package com.yybh.helloworld;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.yybh.po.IMoocJSONResult;
import com.yybh.po.Resource;

@RestController
public class HelloWorld {

	//映射对象
	@Autowired
	private Resource resource;	
	
	@RequestMapping("/hello")
	public Object hello (){
		
		return "Hello World2";
	}
	
	@RequestMapping("/user")
	public ModelAndView  user() {
		System.out.println(1111111);
		
		
		HashMap map = new HashMap<>();
		
		map.put("name", "张三");
		map.put("password" , "123456");
		List list = new ArrayList<>();
		list.add(map);
		HashMap maps = new HashMap<>();
		
		maps.put("name", "李四");
		maps.put("password" , "654321");
		list.add(maps);
		ModelAndView model = new ModelAndView();
		model.addObject("list",list);
		model.setViewName("user");
		
		return model;
		
	}
	
	@RequestMapping("/getResource")
	public IMoocJSONResult getResource () {
		
		Resource rs = new Resource();
		
		//对象拷贝
		BeanUtils.copyProperties(resource, rs);
		
		return IMoocJSONResult.ok(rs);
		
	}
	
	
	
}

