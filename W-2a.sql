select F_NAME,L_NAME 
from EMPLOYEES
where ADDRESS LIKE '%Elgin,IL%';

select F_NAME,L_NAME 
from EMPLOYEES
where B_DATE like '197%';

select * 
from EMPLOYEES
where (SALARY between 60000 and 70000) and DEP_ID=5;

select F_NAME,L_NAME,DEP_ID
from EMPLOYEES
order by DEP_ID;

select F_NAME,L_NAME,DEP_ID
from EMPLOYEES
order by DEP_ID desc,L_NAME desc;

select DEP_ID, count(*) as Count
from EMPLOYEES
group by DEP_ID;

select DEP_ID, count(*) as "Num_of_Employee", AVG(SALARY) as "Average"
from EMPLOYEES
group by DEP_ID;

select DEP_ID, count(*) as "Num_of_Employee", AVG(SALARY) as "AVERAGE"
from EMPLOYEES
group by DEP_ID
order by AVERAGE;

select DEP_ID, count(*) as "Num_of_Employee", AVG(SALARY) as "AVERAGE"
from EMPLOYEES
group by DEP_ID
having count(*)<4
order by AVERAGE;

select D.DEP_NAME, E.F_NAME, E.L_NAME
from EMPLOYEES as E , DEPARTMENTS as D
where E.DEP_ID=D.DEPT_ID_DEP
order by D.DEP_NAME, E.L_NAME desc;


