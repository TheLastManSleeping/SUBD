use MyData;

select '1' as 'missing letters', count(name2) from surname
where name2 like concat('%', left('Халипов', char_length('Халипов') - 1), '%')
union

select '2', count(name2) from surname
where name2 like concat('%', left('Халипов', char_length('Халипов') - 2), '%')