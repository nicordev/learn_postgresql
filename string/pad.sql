-- add characters to the left
-- select lpad(ourValue, totalValueLengthHere, characterToAddHere)
select lpad('hello', 15, 'o')
select lpad(to_hex(1987), 8, '0')

-- add characters to the right
-- select rpad(ourValue, totalValueLengthHere, characterToAddHere)
select rpad('hello', 15, 'o')
select rpad(to_hex(1987), 8, '0')