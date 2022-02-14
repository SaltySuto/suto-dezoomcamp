#Q1
select count(1) from trips_data_all.fhv_tripdata_partitoned;

#Q2
select count(distinct dispatching_base_num) from dtc-pl.trips_data_all.fhv_tripdata_partitoned ;

#Q4
select count(1) from dtc-pl.trips_data_all.fhv_tripdata_partitoned
where pickup_datetime >= '2019-01-01' and 
 pickup_datetime < '2019-04-01'
 and dispatching_base_num in ('B00987','B02060','B02279 ')]