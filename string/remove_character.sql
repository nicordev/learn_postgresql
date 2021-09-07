-- remove first and last character
select regexp_replace(regexp_replace(',1,2,3,', '^.{1}', ''), '.{1}$', '')