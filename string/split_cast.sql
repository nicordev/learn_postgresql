-- get 1 record

select * from fruits f
where f.id = (
	select regexp_split_to_table(
		regexp_replace(regexp_replace(b.owner_ids, '^,', ''), ',$', ''),
		','
	)::integer as passenger_id from basket b
	where b.owner_ids is not null
	and b.owner_ids != ',,'
	limit 1
)

-- get multiple records

select * from fruits f
where f.id in (
	select regexp_split_to_table(
		regexp_replace(regexp_replace(b.owner_ids, '^,', ''), ',$', ''),
		','
	)::integer as passenger_id from basket b
	where b.owner_ids is not null
	and b.owner_ids != ',,'
)
