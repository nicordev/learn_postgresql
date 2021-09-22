-- how to properly cast to date:
select cast('2021-06-07' as date);

-- substraction
select cast('2021-11-07' as date) - cast('2021-08-14' as date);

-- interval
select cast('2021-11-07' as date) - interval '4 days';
select '2021-08-14 00:00:00'::date - interval '4 days';


select timestamp '2001-09-28 16:30' - interval '7:24 hours' as result
select timestamp '2001-09-28 16:30' - timestamp '2001-09-28 08:30' as result


select count(*) from passenger_tags pt
where pt.created between '2021-09-08 16:49:15'::date - interval '365 days' and '2021-09-08 16:49:15'::date + interval '1 day'
and pt."activated" is not null
and pt."disabled" is null
and pt."validity_end" > NOW() OR pt."validity_end" = NULL AND "PassengerPassenger"."deleted" IS NULL



SELECT count(*)
FROM "public"."passenger_tags" AS "PassengerTag"
inner JOIN "public"."passenger_passengers" AS "PassengerPassenger" ON ("PassengerTag"."passenger_passenger_id" = "PassengerPassenger"."id" AND "PassengerPassenger"."data_data_owner_id" = 1)
WHERE "PassengerTag"."created" BETWEEN '2021-09-08 16:49:15'::date - INTERVAL '365 days' AND '2021-09-08 16:49:15'::date + INTERVAL '1 day'
AND "PassengerTag"."activated" IS NOT NULL
AND "PassengerTag"."disabled" IS NULL
AND "PassengerTag"."validity_end" > NOW() OR "PassengerTag"."validity_end" = NULL
AND "PassengerPassenger"."deleted" IS NULL