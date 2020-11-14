USE MyData;

SELECT surname.name2, name.name1 FROM surname, name
WHERE surname.name2 = 'Халипов' AND name.name1 = 'Артур';