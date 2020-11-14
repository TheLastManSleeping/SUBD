use MyData;

select count(case when name2 like 'Халипо_' then name2 end) as s1, 
count(case when name2 like 'Халип__' then name2 end) as s2
from surname;    
