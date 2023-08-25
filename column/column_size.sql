select pg_column_size(int4 '999999'), pg_column_size(numeric(6,0) '999999');

select pg_column_size(smallint '1'), pg_column_size(int '1');
