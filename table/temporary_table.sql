create temporary table fruits(
    id bigserial primary key,
    name varchar (255)
)
;

insert into fruits(name)
values
('apple'),
('orange'),
('banana')
;

select *
from fruits
;