
Company means username 

One Company has multiple domain 

One Domain and multiple project 

select * from mini_project.User_db


Hibernate: create table project_db (id integer not null, domainname integer, primary key (id)) engine=MyISAM

select *  from mini_project.domain_db
desc mini_project.project_db

insert into  domain_db1 (id  companyname ) values (1, 


insert into domain_db (id integer not null, companyname varchar(255), domainname varchar(255), primary key (id)) engine=MyISAM
Hibernate: create table project_db (id integer not null, domainname varchar(255), projectname varchar(255), primary key (id)) engine=MyISAM

insert into mini_project.domain_db (id , companyname , domainname ) values (1, 'TCS', 'Banking');
insert into mini_project.domain_db (id , companyname , domainname ) values (2, 'TCS', 'Telecom');
insert into mini_project.domain_db (id , companyname , domainname ) values (3, 'TCS', 'Finance');

insert into mini_project.domain_db (id , companyname , domainname ) values (4, 'INFOSYS', 'Banking');
insert into mini_project.domain_db (id , companyname , domainname ) values (5, 'INFOSYS', 'Telecom');
insert into mini_project.domain_db (id , companyname , domainname ) values (6, 'INFOSYS', 'E-COMMERCE');


insert into mini_project.project_db (id , companyname , domainname , projectname)
values (1, 'TCS','Banking', 'CityBank');

insert into mini_project.project_db (id , companyname , domainname , projectname)
values (2, 'TCS','Banking', 'HDFCBank');

insert into mini_project.project_db (id , companyname , domainname , projectname)
values (3, 'INFOSYS','Telecom', 'Airtel');

insert into mini_project.project_db (id , companyname , domainname , projectname)
values (4, 'INFOSYS','Telecom', 'Jio')

select * from  mini_project.domain_db where companyname ='TCS'


select * from  mini_project.project_db where companyname ='TCS'  and domainname ='Banking'

delete from mini_project.commercial_db where id =2
select * from  mini_project.commercial_db
insert into mini_project.commercial_db(id,companyname,domainname,projectname, income,expenses)
values(1, 'TCS','Banking', 'CityBank', 100000,0);

insert into mini_project.commercial_db(id,companyname,domainname,projectname, income,expenses)
values(2, 'TCS','Banking', 'HDFCBank', 10000, 0);

delete from mini_project.commercial_db where id =3



select * from  mini_project.expenses_db where id =1
insert into mini_project.commercial_db(id,companyname,domainname,projectname, income,expenses)
values(3, 'INFOSYS','Telecom', 'Airtel', 100000, 50000);

select * from  mini_project.expenses_db where id =1
delete from  mini_project.expenses_db where id =1
insert into mini_project.expenses_db (id , companyname , domainname , projectname, maintenance , marketing   ,salary , taxes , wifi )
values(1,'TCS','Banking', 'CityBank',	2000,15000,30000,1000, 2000)

insert into mini_project.expenses_db (id , companyname , domainname , projectname, maintenance , marketing   ,salary , taxes , wifi )
values(2,'TCS','Banking', 'HDFCBank',	2000,3000,3000,10000, 2000)

