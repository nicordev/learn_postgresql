create table fruits (
    id bigserial not null constraint firstkey PRIMARY KEY,
    name varchar(255) not null,
    created_at date,
    updated_at date,
    deleted_at date,
);