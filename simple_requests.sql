SELECT * FROM renther where month(contract_date)=3 and year(contract_date)=2020;
SELECT * FROM billboards where timestampdiff(day, b_setdate, curdate()) <= 60;
select r_name from renther where r_phone like '_903%';
select contract_num, count(*) from order_ where month(o_date)=3 and year(o_date)=2020 group by contract_num;
select contract_num, sum(o_cost) from order_ where year(o_date)=2020 group by contract_num;
select max(b_cost) from billboards;