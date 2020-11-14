use MyData;

select 'name' as table_name,
count(case when char_length(name1) = (select min(char_length(name1)) from name) then name1 end) as min,
count(case when char_length(name1) = (select max(char_length(name1)) from name) then name1 end) as max,
count(case when char_length(name1) = (select round(avg(char_length(name1))) from name) then name1 end) as average
from name union

select 'surname',
count(case when char_length(name2) = (select min(char_length(name2)) from surname) then name2 end),
count(case when char_length(name2) = (select max(char_length(name2)) from surname) then name2 end),
count(case when char_length(name2) = (select round(avg(char_length(name2))) from surname) then name2 end)
from surname union

select 'country',
count(case when char_length(country) = (select min(char_length(country)) from countries) then country end),
count(case when char_length(country) = (select max(char_length(country)) from countries) then country end),
count(case when char_length(country) = (select round(avg(char_length(country))) from countries) then country end)
from countries union 

select 'area',
count(case when char_length(area) = (select min(char_length(area)) from areas) then area end),
count(case when char_length(area) = (select max(char_length(area)) from areas) then area end),
count(case when char_length(area) = (select round(avg(char_length(area))) from areas) then area end)
from areas union

select 'city',
count(case when char_length(city) = (select min(char_length(city)) from city) then city end),
count(case when char_length(city) = (select max(char_length(city)) from city) then city end),
count(case when char_length(city) = (select round(avg(char_length(city))) from city) then city end)
from city union

select 'university',
count(case when char_length(university) = (select min(char_length(university)) from university) then university end),
count(case when char_length(university) = (select max(char_length(university)) from university) then university end),
count(case when char_length(university) = (select round(avg(char_length(university))) from university) then university end)
from university;