create table fruits (
    id bigserial primary key,
    name varchar(255) not null,
    description jsonb,
    created_at date,
    updated_at date,
    deleted_at date
);

drop table fruits;