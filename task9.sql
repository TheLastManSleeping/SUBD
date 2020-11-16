use MyData;

set foreign_key_checks = 0;
truncate table patronymic;
set foreign_key_checks = 1;

insert into patronymic(name3)
select distinct temp.name1 from(
select (case when 
name1 like '%ж' or
name1 like '%ш' or
name1 like '%ч' or
name1 like '%щ' or
name1 like '%ц' then 
concat(name1, 'евич')
when 
name1 like '%б' or
name1 like '%в' or
name1 like '%г' or
name1 like '%д' or
name1 like '%з' or
name1 like '%й' or
name1 like '%к' or
name1 like '%л' or
name1 like '%м' or
name1 like '%н' or
name1 like '%п' or
name1 like '%р' or
name1 like '%с' or
name1 like '%т' or
name1 like '%ф' then 
concat(name1, 'ович')
else 'null' end) 
as name1 from name) 
as temp where name1 <> 'null' order by name1patronymic order by name3;