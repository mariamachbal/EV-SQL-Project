-- Create table for New motor vehicle registrations by geographic zone
create table EV_registrations_by_zone 
(geographic_zone varchar,
 zone_code varchar primary key,
 number_of_vehicles int );

 -- Create table for New motor vehicle registrations by vehicle motor type
create table EV_registrations_by_type
(zone_code varchar, 
 EV_Type varchar, 
 number_of_vehicles int );
 
 -- Create table for EV charging stations
create table EV_Charging_Stations
(city varchar , 
 zone_code varchar primary key , 
 Total_number_of_stations int , 
 level_2_stations int , 
 level_3_stations int , 
 free_stations int );