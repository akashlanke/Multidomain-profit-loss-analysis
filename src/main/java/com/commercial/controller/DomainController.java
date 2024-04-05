package com.commercial.controller;

import com.commercial.entity.Domain;
import com.commercial.service.DomainService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

@Controller
public class DomainController {

	@Autowired
	DomainService domainService;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		StringTrimmerEditor trimmer = new StringTrimmerEditor(true);
		webDataBinder.registerCustomEditor(String.class, trimmer);
	}

	@RequestMapping("/domainList")
	public String domainList(Model model, @RequestParam("companyName") String companyName) {
		List<Domain> domainList = domainService.getAllDomains(companyName);
		model.addAttribute("CMP_NAME", companyName.toUpperCase());
		model.addAttribute("DOMAIN_LIST", domainList);
		return "domain-list";
	}

}
