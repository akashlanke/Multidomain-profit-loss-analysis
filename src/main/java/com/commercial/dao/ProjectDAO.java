package com.commercial.dao;

import java.util.List;

import com.commercial.entity.Project;


public interface ProjectDAO {
	List<Project> getAllProjects(String companyName, String domainName);
}
