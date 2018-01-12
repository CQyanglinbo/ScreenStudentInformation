package online.shixun.project.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;

import online.shixun.project.model.Student;
import online.shixun.project.model.Student.Gender;
import online.shixun.project.service.StudentService;


@Controller
@RequestMapping
public class MyConroller {
	@Autowired
	private StudentService studentService;
	@RequestMapping(value="findAll")
	public ModelAndView findAll(ModelAndView model){
		List<Student> list=new ArrayList<Student>();
		list=studentService.findAll();
		model.addObject("list",list);
		model.setViewName("home");
		return model;
	}
	@RequestMapping(value="add",method=RequestMethod.POST)
	public ModelAndView add(ModelAndView model,Student student){
		model.addObject(student);
		studentService.add(student);
		findAll(model);
		return model;	
	}
	@ResponseBody
	@RequestMapping(value="findBydirection",method=RequestMethod.POST)
	public String findBydirection(String direction){
		JSONObject jsonObject=new JSONObject();
		List<Student> list=studentService.findStudentByDirection(direction);
		jsonObject.put("list", list);
		return jsonObject.toString();
	}
	@ResponseBody
	@RequestMapping(value="findByGender",method=RequestMethod.POST)
	public String findByGender(Gender gender){
		JSONObject jsonObject=new JSONObject();
		List<Student> list=studentService.findStudentByGender(gender);
		jsonObject.put("list", list);
		return jsonObject.toString();
	}
	
}
