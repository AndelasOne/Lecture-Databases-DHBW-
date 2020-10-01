use exampledb;
# describe employee;
# drop table employee;


create table employee
(
employee_id int primary key,
first_name varchar(32),
last_name varchar(32),
title varchar(64),
salary int
);



insert into employee (employee_id, first_name, last_name, title, salary) 
values 
(1, "Andy", "Weber", "teacher", 100),
(2, "Hans", "Mueler", "farmer", 38543),
(3, "Dieter", "Bohlen", "craftman", 687478),
(4, "Michael", "Schreiber", "lawyer", 526),
(5, "Daniel", "Jung", "engineer", 2572356);

update employee set first_name="Peter" where first_name="Andy";

select *
from employee
where salary > 10;
