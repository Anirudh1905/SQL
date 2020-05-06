select * 
from EMPLOYEES
where SALARY<
(select AVG(SALARY) from employees);

select EMP_ID, SALARY,
(select AVG(SALARY) from employees) as AVG_SALARY
from employees;

select * from
(select EMP_ID, F_NAME, L_NAME, DEP_ID 
from employees) as EMP4ALL;

select * from employees
where DEP_ID in
(select DEPT_ID_DEP from departments);

select D.LOC_ID, E.F_NAME
from employees as E, departments as D
where (E.DEP_ID=D.DEPT_ID_DEP) and D.LOC_ID='L0002';

select E.F_NAME,E.DEP_ID,E.SALARY
from employees as E, departments as D
where (E.DEP_ID=D.DEPT_ID_DEP) and E.SALARY>='70000';
