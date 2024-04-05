package com.commercial.controller;

import com.commercial.entity.Project;
import com.commercial.service.ProjectService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ProjectController {


	@Autowired
	ProjectService projectService;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		StringTrimmerEditor trimmer = new StringTrimmerEditor(true);
		webDataBinder.registerCustomEditor(String.class, trimmer);
	}

	@RequestMapping("/projectList")
	public String projectList(Model model, @RequestParam("cmpName") String companyName,
			@RequestParam("dmName") String domainName) {

		List<Project> projectList = projectService.getAllProjects(companyName, domainName);
		model.addAttribute("Project_LIST", projectList);
		model.addAttribute("CMP_NAME", companyName);
		model.addAttribute("DOMAIN_NAME", domainName);
		return "project-list";
	}

}
