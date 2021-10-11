-- principle

select case
  when 1 < 2 then 'hello'
  when 1 < 4 then 'world'
  else 'hi'
end

select case
  when fruit_count < 2 then 'hello'
  when fruit_count < 4 then 'world'
  else 'hi'
end
from (
  values
  (1),
  (2),
  (3),
  (4)
) fruit(fruit_count)
