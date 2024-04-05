package com.commercial.service;

import java.util.List;

import com.commercial.entity.Project;

public interface ProjectService {

	List<Project> getAllProjects(String companyName, String domainName);
}
