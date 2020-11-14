use MyData;

select count(case when name1 like 'Арту_' then name1 end), 
count(case when name1 like 'Арт__' then name1 end) from name;    