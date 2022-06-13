-- https://www.postgresqltutorial.com/postgresql-string-functions/postgresql-substring/

-- substring(string, start, end)
select substring('hello world!', 1, 5);
select substring(now()::text, 1, 10) as today;

-- using starting position and length
-- substring(string from start for length)
update fruits
set fruit_name = substring(fruit_name from 34 for 42)
where fruit_name like 'myLooongName%'
;
update fruits
set fruit_name = substring(fruit_name from 1 for 8)
where length(firstname) > 8
;

-- using regex
select substring('/fruits/ceebf1b1-7152-42d5-b477-3d8641282396/buy/Dummy buyer 1', '/([a-z0-9-]{36})/');
