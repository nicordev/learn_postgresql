-- remove leading zeroes
where regexp_replace(fruit.hexadecimalId, '^0*', '', 'g') = '4b30842b85784'

-- remove first and last character
select regexp_replace(regexp_replace(',1,2,3,', '^.{1}', ''), '.{1}$', '')
