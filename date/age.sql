create temporary table people(
    id bigserial primary key,
    "name" varchar (255),
    birthday date
)
;

insert into people ("name", birthday)
values
    ('lara clette', '1987-07-17'),
    ('sarah fraichit', '1987-07-17'),
    ('jim nastique', '1987-07-17')
;

select
    extract(year from age(now(), birthday)) -- || ' years' as age
from people
;