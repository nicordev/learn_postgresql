-- convert hexadecimal to decimal

SELECT ('x' || lpad(temporary_table_column_hexadecimal_value, 16, '0'))::bit(64)::bigint AS decimal_int8_value
FROM  (
   VALUES
      ('ff'::text)
    , ('7fffffff')
    , ('80000000')
    , ('deadbeef')
    , ('7fffffffffffffff')
    , ('8000000000000000')     -- overflow into negative number
    , ('ffffffffffffffff')
    , ('ffffffffffffffff123')  -- too long
   ) temporary_table(temporary_table_column_hexadecimal_value);