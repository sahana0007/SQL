# Write your MySQL query statement below


select e1.name as Employee
from Employee e1
left join Employee e2
on e1.managerId = e2.id
where e1.salary > e2.salary


select e1.name as Employee
from Employee as e1
inner join Employee as e2
on e1.managerId = e2.id
    and e1.salary > e2.salary


select a.name as Employee from employee as a, employee as b
where a.ManagerId = b.id 
and a.salary>b.salary