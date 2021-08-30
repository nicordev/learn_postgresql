-- how to properly cast to date:
select cast('2021-06-07' as date);

-- substraction
select cast('2021-11-07' as date) - cast('2021-08-14' as date);

-- interval
select cast('2021-11-07' as date) - interval '4 days';
select '2021-08-14 00:00:00'::date - interval '4 days';
