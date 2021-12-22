
update fruits
set fruit_name = substring(fruit_name from 34 for 42)
where fruit_name like 'myLooongName%'
;
update fruits
set fruit_name = substring(fruit_name from 1 for 8)
where length(firstname) > 8
;
