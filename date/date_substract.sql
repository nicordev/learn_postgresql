select '2021-08-14 00:00:00'::date - interval '4 days';

-- how to properly cast to date:
select cast('2021-06-07' as date)