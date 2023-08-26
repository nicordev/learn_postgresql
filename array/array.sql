-- https://www.postgresql.org/docs/current/sql-expressions.html#SQL-SYNTAX-ARRAY-CONSTRUCTORS

SELECT ARRAY(
    SELECT ARRAY[i, i*2] FROM generate_series(1,5) AS a(i)
);

create temporary table fruit(
    id bigserial primary key,
    name varchar (255)
)
;

insert into fruit(id, name)
values (123, 'banana')
;

select array[
    f.id
    -- , f.name
] from fruit f
;
