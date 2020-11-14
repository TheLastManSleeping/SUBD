use MyData;

drop temporary table if exists temp_patronymic;
create temporary table temp_patronymic (name3 varchar(50));

insert into temp_patronymic select (
case when name1 like '%а' or name1 like '%я' 
then 'null'

when name1 like '%ц' or name1 like '%ж' or name1 like '%ч' 
or name1 like '%ш' or name1 like '%щ' 
then concat(name1, 'евич')

when name1 like '%п' or name1 like '%б' or name1 like '%ф' 
or name1 like '%в' or name1 like '%т' or name1 like '%д' 
or name1 like '%с' or name1 like '%з' or name1 like '%к' 
or name1 like '%г' or name1 like '%х' or name1 like '%м' 
or name1 like '%н' or name1 like '%р' or name1 like '%л'
then concat(name1, 'ович')

else 'null'
end)
from name;

delete from temp_patronymic where name3 = 'null';

insert into patronymic(name3) select name3 from temp_patronymic order by name3;