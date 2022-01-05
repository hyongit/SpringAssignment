package kr.ac.hansung.cse.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.hansung.cse.model.Subject;
import kr.ac.hansung.cse.service.SubjectService;

@Controller
public class SubjectController {
	
	@Autowired
	private SubjectService subjectService;
	
	@RequestMapping("/subjects") 
	public String showSubjects(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);
		
		return "subjects"; //jsp file
	}
	
	@RequestMapping("/menu")
	public String menu(Model model) {
		
		model.addAttribute("subject", new Subject()); 
		
		return "menu";
	}
	
	@RequestMapping("/detail_2020_1") 
	public String detail_2020_1(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);		
		return "detail_2020_1";
	}
	
	@RequestMapping("/detail_2020_2") 
	public String detail_2020_2(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);		
		return "detail_2020_2";
	}
	
	@RequestMapping("/detail_2021_1") 
	public String detail_2021_1(Model model) {
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects);		
		return "detail_2021_1";
	}
	
	
	@RequestMapping("/signup") 
	public String signup(Model model) {
		
		model.addAttribute("subject", new Subject());
		
		return "signup";
	}
	
	@RequestMapping("/viewsignup") 
	public String viewSignup(Model model) {
		
		List<Subject> subjects = subjectService.getCurrent();
		model.addAttribute("subjects", subjects); 
		
		return "viewsignup";
	}
	
	@RequestMapping("/intro") 
	public String intro(Model model) {
		
		model.addAttribute("subject", new Subject());
		
		return "intro";
	}
	
	@RequestMapping("docreate")
	public String doCreate(Model model, @Valid Subject subject, BindingResult result) {
		
		if(result.hasErrors()) {
			
			System.out.println("===Form data does not validated===");
			List<ObjectError> errors = result.getAllErrors();
			
			for(ObjectError error: errors) {
				System.out.println(error.getDefaultMessage());
			}
			
			return "signup";
		}
		
		subjectService.insert(subject);
		
		return "offercreated";
	}
}
