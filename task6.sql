use MyData;

select count(case when name1 like 'Арту_' then name1 end) as n1, 
count(case when name1 like 'Арт__' then name1 end) as n2 
from name;    
