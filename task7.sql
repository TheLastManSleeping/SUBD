use MyData;

select 'name' as table_name,
min(char_length(name1)) as min, 
max(char_length(name1)) as max, 
avg(char_length(name1)) as average
from name union 

select 'surname',
min(char_length(name2)), 
max(char_length(name2)), 
avg(char_length(name2))
from surname union

select 'country',
min(char_length(country)), 
max(char_length(country)), 
avg(char_length(country)) 
from countries union 

select 'area',
min(char_length(area)), 
max(char_length(area)), 
avg(char_length(area))
from areas union

select 'city',
min(char_length(city)), 
max(char_length(city)), 
avg(char_length(city))
from city union

select 'university',
min(char_length(university)), 
max(char_length(university)), 
avg(char_length(university))
from university;