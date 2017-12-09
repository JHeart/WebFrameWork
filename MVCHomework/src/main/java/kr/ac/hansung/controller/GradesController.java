package kr.ac.hansung.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.hansung.model.Grade;
import kr.ac.hansung.model.GradeDetail;
import kr.ac.hansung.service.GradeService;



@Controller
public class GradesController {
	
	@Autowired
	private GradeService gradeService;
	
	@RequestMapping("/yearSemesterSumofGrade")
	public String gradeCheck(Model model) {
		List<Grade> grades = gradeService.getYearSemesterSumofGrade();
		model.addAttribute("grades", grades);

		return "yearSemesterSumofGrade";
	}

	@RequestMapping("/grades")
	public String grades(Model model) {
		List<GradeDetail> grades = gradeService.getCurrent();
		model.addAttribute("grades", grades);

		return "grades";
	}
	
	@RequestMapping("/detail")
	public String detail(@RequestParam int year,
			@RequestParam int semester, Model model) {
		
		List<GradeDetail> grades = gradeService.getDetailGrades(year, semester);

		model.addAttribute("grades", grades);

		return "detailview";
	}
	
	@RequestMapping("/divisionGrade")
	public String divisionGrade(Model model) {
		
		List<GradeDetail> grades = gradeService.getDivisionGrades();

		model.addAttribute("grades", grades);

		return "divisionGrade";
	}

	
	@RequestMapping("/createClass")
	public String createClass(Model model) {
		
		

		model.addAttribute("grades", new GradeDetail());

		return "createClass";
	}
	
	@RequestMapping("/docreate")
	public String doCreate(Model model, @Valid GradeDetail gradedetail, BindingResult result) {
	
		if(result.hasErrors()) {
			System.out.println("===Form data does not validated");
			List<ObjectError> errors = result.getAllErrors();
			for(ObjectError error:errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "createClass";
		}
		
		gradeService.insert(gradedetail);
		
		return "classcreated";
	}
	
	
	@RequestMapping("/inquireClass")
	public String getinquireClass(Model model) {
		
		List<GradeDetail> grades = gradeService.getCreatedClass(2018);

		model.addAttribute("grades", grades);

		return "inquireClass";
	}
	
}
