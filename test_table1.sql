create table dept (DEPTNO integer, DNAME varchar(256), LOC varchar(256));
insert into dept (DEPTNO, DNAME, LOC) values (10, 'ACCOUNTING', 'NEW YORK');
insert into dept (DEPTNO, DNAME, LOC) values (20, 'RESEARCH', 'DALLAS');
insert into dept (DEPTNO, DNAME, LOC) values (30, 'SALES', 'CHICAGO');
insert into dept (DEPTNO, DNAME, LOC) values (40, 'OPERATIONS', 'BOSTON');

select * from dept;       