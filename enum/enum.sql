--
-- https://stackoverflow.com/questions/3660787/how-to-list-custom-types-using-postgres-information-schema
--

-- enum names, values
select pg_type.typname as enum_type,
  pg_enum.enumlabel as enum_label
from pg_type
join pg_enum on pg_enum.enumtypid = pg_type.oid
;

-- enum schema, names, values
select n.nspname as enum_schema,
  t.typname as enum_type,
  e.enumlabel as enum_label
from pg_type t
join pg_enum as e on e.enumtypid = t.oid
join pg_catalog.pg_namespace n on n.oid = t.typnamespace
--where n.nspname != 'public'
;

-- enum names
SELECT      n.nspname as schema, t.typname as type
FROM        pg_type t
LEFT JOIN   pg_catalog.pg_namespace n ON n.oid = t.typnamespace
WHERE       (t.typrelid = 0 OR (SELECT c.relkind = 'c' FROM pg_catalog.pg_class c WHERE c.oid = t.typrelid))
AND     NOT EXISTS(SELECT 1 FROM pg_catalog.pg_type el WHERE el.oid = t.typelem AND el.typarray = t.oid)
AND     n.nspname NOT IN ('pg_catalog', 'information_schema');

-- create a view
CREATE OR REPLACE VIEW vw_enums AS
SELECT t.typname, e.enumlabel, e.enumsortorder
FROM pg_enum e
JOIN pg_type t ON e.enumtypid = t.oid;