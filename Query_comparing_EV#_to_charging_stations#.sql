--calculating the total number of charging stations in the province of ontario
with ontario_charging_stations as (
select sum(total_number_of_stations) as number_of_stations , zone_code
from ev_charging_stations 
where zone_code='ON'
group by ev_charging_stations.zone_code),

-- Selecting the total number of registered EV in Ontario from 2017 to 2023
ontario_EV_registrations as (
select *from ev_registrations_by_zone
where zone_code='ON')

-- Joining table1 and table 2 to compare the number of stations with the number of EV
select ontario_charging_stations.number_of_stations,ontario_EV_registrations.number_of_vehicles,ontario_charging_stations.zone_code 
from ontario_charging_stations
join ontario_EV_registrations
on ontario_charging_stations.zone_code= ontario_EV_registrations.zone_code