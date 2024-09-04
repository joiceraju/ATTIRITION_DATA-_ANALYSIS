create database employee_attrition;
select * from employee_attirtion_new;
select Gender,MaritalStatus ,count(Attrition) from employee_attirtion_new where Attrition='no'and MaritalStatus='married'group by  gender;
select Department,count(Department) from employee_attirtion_new group by Department;
select EmployeeID,age,gender,Attrition from employee_attirtion_new where MaritalStatus='married';
select age,case when age>=18 and age<=35 then 'young aged adults '
when age>=35 and age<=50 then ' middle aged '
else'old aged' end as age_category from employee_attirtion_new;
alter table employee_attirtion_new  add column age_category varchar(50);
update employee_attirtion_new set age_category = case when age>=18 and age<=35 then 'young aged adults '
when age>=35 and age<=50 then ' middle aged '
else 'old aged' end;
select * from employee_attirtion_new order by age_category desc limit 1;
select avg(age) from employee_attirtion_new where Attrition='no';
select Attrition,MaritalStatus, age from employee_attirtion_new where MaritalStatus='Divorced' and Attrition='yes' and age='middle aged';
select BusinessTravel,count(BusinessTravel) from employee_attirtion_new where BusinessTravel='Travel_Frequently';
select  BusinessTravel,count(*) from employee_attirtion_new where Attrition='yes' group by BusinessTravel;
select * from employee_attirtion_new limit 10;
select joblevel,avg(monthlyRate)as avgmonthlyrate from employee_attirtion_new group by Joblevel;
select Attrition, avg(DistanceFromHome)as avgdistance from employee_attirtion_new group by Attrition;