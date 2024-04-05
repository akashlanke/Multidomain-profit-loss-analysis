package com.commercial.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "commercial_db")
public class Commercial {
	@Id
	@Column
	private int id;
	@Column
	private String domainname;
	@Column
	private String projectname;
	@Column
	private long income;
	@Column
	private long expenses;
	
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

	public long getIncome() {
		return income;
	}

	public void setIncome(long income) {
		this.income = income;
	}

	public long getExpenses() {
		return expenses;
	}

	public void setExpenses(long expenses) {
		this.expenses = expenses;
	}

	@Override
	public String toString() {
		return "Commercial [id=" + id + ", domainname=" + domainname + ", projectname=" + projectname + ", income="
				+ income + ", expenses=" + expenses + ", companyname=" + companyname + "]";
	}





}
