package com.commercial.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.commercial.dao.ProjectDAO;
import com.commercial.entity.Project;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectDAO projectDAO;

	@Override
	@Transactional
	public List<Project> getAllProjects(String companyName, String domainName) {
		return projectDAO.getAllProjects(companyName, domainName);
	}

}
