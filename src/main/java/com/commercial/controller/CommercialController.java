package com.commercial.controller;

import com.commercial.entity.Commercial;
import com.commercial.entity.Expenses;
import com.commercial.service.CommercialService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class CommercialController {

	@Autowired
	CommercialService commercialService;

	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		StringTrimmerEditor trimmer = new StringTrimmerEditor(true);
		webDataBinder.registerCustomEditor(String.class, trimmer);
	}

	@RequestMapping("/commercial")
	public String projectList(Model model, @RequestParam("cmpName") String companyName,
			@RequestParam("dmName") String domainName, @RequestParam("pName") String projectName) {
		List<Commercial> commercials = commercialService.getCommercial(companyName, domainName, projectName);
		if (commercials != null && commercials.size() > 0) {
			Commercial commercial = commercials.get(0);
			long income = commercial.getIncome();
			long expenses = commercial.getExpenses();
  
			String  value =income>expenses?"P":"L";
			System.out.println("income --->" +income);
			System.out.println("expenses --->" +expenses);
			model.addAttribute("COMMERCIALS", commercials);
			model.addAttribute("COMMERCIAL", commercial);
			model.addAttribute("INCOME", income);
			model.addAttribute("EXPENSES", expenses);
			model.addAttribute("PROJECTNAME", projectName);
			model.addAttribute("PROFIT", value);
			return "commercial-success";
		} else {
			return "commercial-failed";
		}
	}
	
	@RequestMapping("/expensesDetails")
	public String getExpensesDetails(Model model, @RequestParam("cmpName") String companyName,
			@RequestParam("dmName") String domainName, @RequestParam("pName") String projectName,
			@RequestParam("profit") String profit)
	{
		System.out.println(companyName);
		System.out.println(domainName);
		System.out.println(projectName);
		System.out.println(profit);
		Expenses expenses=commercialService.getExpensesDetails(companyName,domainName,projectName);
		model.addAttribute("Expenses", expenses);
		model.addAttribute("PROJECTNAME", projectName);
		model.addAttribute("PROFIT", profit);
		if(profit.equalsIgnoreCase("L"))
		{
			List<String>suggestion = new ArrayList<String>();
			suggestion.add("Suggestion List");
			suggestion.add(" ");
			suggestion.add(" 1.  Analyze and optimize costs for the most expensive parameter: employee salary");
			suggestion.add(" ");
			suggestion.add(" 2.  Explore opportunities to increase revenue, such as expanding services or reaching new markets");
			suggestion.add(" ");
			suggestion.add(" 3.  Review marketing strategies to enhance customer acquisition and retention");
			suggestion.add(" ");
			suggestion.add(" 4.  Consider renegotiating contracts or exploring alternative suppliers for utilities and maintenance.");
			suggestion.add(" ");
			model.addAttribute("SUGGESTION", suggestion);

		}
		if(expenses!=null)
		{
			return "expenses-success";
		}else{
			
		return "expenses-failed";
		}
	}

}
