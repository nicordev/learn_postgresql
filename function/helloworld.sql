create or replace function hello(text) returns text
as $function_boundaries_name_here$
select $1;
$function_boundaries_name_here$
language sql;

select hello('world');