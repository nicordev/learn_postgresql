create temporary table fruit(
    id bigserial primary key,
    name varchar (255)
)
;

insert into fruit(name)
values
('apple'),
('orange'),
('banana')
;

select "name"
from fruit
order by random()
;
