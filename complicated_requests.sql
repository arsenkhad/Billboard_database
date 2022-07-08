select b_id, b_adress, sum(rent_len) from billboards 
join order_line using(b_id) 
where rent_s_year=2020 and rent_start+rent_len < 12 group by b_id;

select b_id from order_line join order_ using(o_id) join renther using(contract_num) where r_name='Извеков' and o_date like '2020-04%';
select * from billboards where b_cost = (select min(b_cost) from billboards);
select r_name from renther left join order_ using(contract_num) where o_cost is null;
select r_name from renther left join (select contract_num from order_ where o_date like '2020-03%') sec using(contract_num) where sec.contract_num is null;
select * from renther where contract_num = (select contract_num from n6 order by count desc limit 1);