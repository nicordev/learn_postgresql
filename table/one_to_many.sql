
create temporary table basket(
    id int primary key,
    name varchar(255)
)
;

create temporary table fruit(
    id int primary key,
    name varchar(255),
    basket_id int,
    constraint fk_basket
        foreign key (basket_id) 
	    references basket(id)
)
;

insert into basket(id, name)
values (1000, 'zog')
;

insert into fruit(id, name, basket_id)
values (10, 'cherry', 1000)
;

select 
    b.*
    , f.*
from basket b
inner join fruit f on f.basket_id = b.id
;