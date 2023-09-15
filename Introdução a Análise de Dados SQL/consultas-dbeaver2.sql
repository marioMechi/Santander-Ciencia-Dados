use company;
show tables;

select * from employee e ;
select * from departament d ;

--- categorizar os departamentos por numero de colaboradores

select Dno, Ssn from employee e inner join departament d ON Dno = Dnumber; 
select Dno, count(*) from employee e inner join departament d ON Dno = Dnumber group by 1; 

--- projetos por departamento

select Dname, Dnum  from project p inner join departament d on Dnum = Dnumber;
select Dnum, count(*) as Projects from project p inner join departament d on Dnum = Dnumber group by 1 order by Projects asc ;

--- discretização

select Fname, Salary,
	case 
	 	when Salary > 39000 then 'Executivo'
	 	when Salary > 29000 then 'Senior'
	 	when Salary > 19000 then 'Pleno'
	 	else 'NA'
	end as Employee_level
from employee e  order by 3;

--- exemplo de NPS

select response_id,
	case
		when nps <= 6 then 'Detrador'
		when nps <= 8 then 'Passivo'
		else 'Promoter'
	end as NPS
from table_name e order by NPS;

--- padronização

select Fname, Sex,
	case
		when Sex = 'm' then 'M'
		when Sex = 'f' then 'F'
		else Sex
	end as Gender
from employee e ;
