package com.commercial.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "project_db")
public class Project {
	@Id
	@Column
	private int id;
	@Column
	private String domainname;
	@Column
	private String projectname;
	
	@Column
	private String companyname;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDomainname() {
		return domainname;
	}

	public void setDomainname(String domainname) {
		this.domainname = domainname;
	}

	public String getProjectname() {
		return projectname;
	}

	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	@Override
	public String toString() {
		return "Project [id=" + id + ", domainname=" + domainname + ", projectname=" + projectname + ", companyname="
				+ companyname + "]";
	}




}
