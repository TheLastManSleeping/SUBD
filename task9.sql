use MyData;

set foreign_key_checks = 0;
truncate table patronymic;
set foreign_key_checks = 1;

insert into patronymic(name3)
select distinct temp.name1 from
(
    select (case
        when 
        name1 regexp '^.[ая]{1}$'
        then 'null'
        when 
        name1 regexp '^.[жшчщц]{1}$'
        then concat(name1, 'евич')
        when
        name1 regexp '^.*[бвгдзйклмнпрстф]{1}$'
        then concat(name1, 'ович')
        end
    ) as name1
    from name
) as temp
where name1 not in ('null')
order by name1;
