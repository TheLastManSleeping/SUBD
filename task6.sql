use MyData;

select '1' as 'missing letters', count(name1) from name
where name1 like concat('%', left('Артур', char_length('Артур') - 1), '%')
union

select '2', count(name1) from name
where name1 like concat('%', left('Артур', char_length('Артур') - 2), '%');