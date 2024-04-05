package com.commercial.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "domain_db")
public class Domain {
	@Id
	@Column
	private int id;
	@Column
	private String companyname;
	@Column
	private String domainname;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public void setDomainname(String domainname) {
		this.domainname = domainname;
	}

	public String getDomainname() {
		return domainname;
	}

	@Override
	public String toString() {
		return "Domain [id=" + id + ", companyname=" + companyname + ", domainname=" + domainname + "]";
	}

}
