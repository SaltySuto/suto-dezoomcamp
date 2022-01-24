--3
select count(1) from public.yellow_taxi_data where tpep_pickup_datetime::date = '2021-01-15';
--53024

--4
select tpep_pickup_datetime::date,max(tip_amount) 
from public.yellow_taxi_data 
group by tpep_pickup_datetime::date
order by max(tip_amount) desc;

--"2021-01-20"    1140.44

--5
select "DOLocationID",count(1) from public.yellow_taxi_data where tpep_pickup_datetime::date = '2021-01-14' and "PULocationID" = 43
group by "DOLocationID"
order by count(1) desc
limit 100;

--"Manhattan","Upper East Side South","Yellow Zone"
--Upper East Side South

--6
select "PULocationID","DOLocationID",count(1),avg(total_amount) from public.yellow_taxi_data 
group by "PULocationID","DOLocationID"
order by avg(total_amount) desc
limit 100;

--4 265
--Alphabet City / Unknown