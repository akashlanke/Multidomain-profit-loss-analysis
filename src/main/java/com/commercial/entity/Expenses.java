package com.commercial.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "expenses_db")
public class Expenses {
	@Id
	@Column
	private int id;
	@Column
	private String domainname;
	@Column
	private String projectname;

	@Column
	private String companyname;
	@Column
	private int taxes;
	@Column
	private int wifi;
	@Column
	private int salary;
	@Column
	private int marketing;
	@Column
	private int maintenance;

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

	public int getTaxes() {
		return taxes;
	}

	public void setTaxes(int taxes) {
		this.taxes = taxes;
	}

	public int getWifi() {
		return wifi;
	}

	public void setWifi(int wifi) {
		this.wifi = wifi;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getMarketing() {
		return marketing;
	}

	public void setMarketing(int marketing) {
		this.marketing = marketing;
	}

	public int getMaintenance() {
		return maintenance;
	}

	public void setMaintenance(int maintenance) {
		this.maintenance = maintenance;
	}

	@Override
	public String toString() {
		return "Expenses [id=" + id + ", domainname=" + domainname + ", projectname=" + projectname + ", companyname="
				+ companyname + ", taxes=" + taxes + ", wifi=" + wifi + ", salary=" + salary + ", marketing="
				+ marketing + ", maintenance=" + maintenance + "]";
	}


}
