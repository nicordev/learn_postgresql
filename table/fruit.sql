create table fruit (
    id bigserial primary key,
    name varchar(255) not null,
    description jsonb,
    created_at date,
    updated_at date,
    deleted_at date
);

insert into fruit(name, created_at)
values (
    'apple',
    now(),
    null,
    null,
)

-- drop table fruit;