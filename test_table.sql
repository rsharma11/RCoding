show databases;
create table emp (EMPNO integer, ENAME varchar (256), JOB varchar (256), MGR integer, HIREDATE date, SAL integer, COMM integer, DEPTNO integer);
show tables;
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL , 20);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300 , 30);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500 , 30);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL , 20);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250,  1400, 30);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL , 30);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL , 10);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL , 20);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL , 10);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500,  0, 30);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7876, 'ADAMS', 'clerk', 7788, '1983-01-12', 1100, NULL , 20);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7900, 'JAMES', 'clerk', 7698, '1981-12-03', 950, NULL , 30);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL , 20);
insert into emp (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO) values (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL , 10);

select * from emp;
#where
select ENAME 
	from emp 
	where DEPTNO =10;
    
select *
	from emp 
	where (DEPTNO =10 
    or COMM is not NULL
    or SAL<=2000)
    and DEPTNO =20;
    
select ENAME, DEPTNO, SAL 
	from emp;
    
select ENAME, SAL, COMM 
	from emp;

#Renaming a column

select SAL as Salary, COMM as Commission
	from emp;
    

select * 
	from (
    select SAL as Salary, COMM as Commission
	from emp) x 
    where salary < 5000;
    
select concat (ename, ' works as a ' , job) 
	from emp
    where deptno = 10;

select ENAME, SAL,
	case when sal<=2000 then 'UNDERPAID'
			 when sal>=4000 then 'OVERPAID'
			else 'OK'
            end
from emp; 

select ENAME, SAL from emp limit 5;

select ENAME, SAL 
	from emp 
    order by rand() limit 5;
    
select * 
    from emp
    where comm is null;

select * from emp;
select coalesce (comm,0) from emp;

select ENAME, JOB
	from emp where DEPTNO in (10,20) and (ENAME like '%I%' or JOB like '%ER');