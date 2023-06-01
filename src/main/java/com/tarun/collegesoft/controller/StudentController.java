package com.tarun.collegesoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tarun.collegesoft.dto.StudentDto;
import com.tarun.collegesoft.helper.Login;
import com.tarun.collegesoft.service.StudentService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("student")
public class StudentController {

    @Autowired
	StudentService  studentService;

	@PostMapping("signup")
	public ModelAndView signup(@ModelAttribute StudentDto student, @RequestParam String date) {
		return studentService.signup(student, date);
	}

	@PostMapping("login")
	public ModelAndView login(@ModelAttribute Login login, HttpSession session) {
		return studentService.login(login, session);
	}
    
}
