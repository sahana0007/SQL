# Write your MySQL query statement below

SELECT request_at AS Day, ROUND(SUM(IF(status != "completed",1,0))/COUNT(status),2) AS "Cancellation Rate" from Trips
where request_at >= "2013-10-01" and request_at <= "2013-10-03"
and client_id IN (select users_id from Users where banned = "No")
and driver_id IN (select users_id from Users where banned = "No")
group by request_at