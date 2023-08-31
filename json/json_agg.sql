
create temporary table basket(
    id int primary key,
    owner varchar(255)
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

insert into basket(id, owner)
values 
    (1, 'lara'),
    (2, 'sarah')
;

insert into fruit(id, name, basket_id)
values 
    (11, 'cherry', 1),
    (22, 'orange', 1),
    (33, 'banana', 2)
;

select 
    b.owner
    , json_build_object(
        'fruits', (
            select json_agg(json_build_object('name', f.name))
            from fruit f
            where f.basket_id = b.id
        )
    ) as basket
from basket b
group by b.id
;
