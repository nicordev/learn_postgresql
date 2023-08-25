-- https://www.postgresql.org/docs/current/sql-expressions.html#SQL-SYNTAX-ARRAY-CONSTRUCTORS

SELECT ARRAY(
    SELECT ARRAY[i, i*2] FROM generate_series(1,5) AS a(i)
);
