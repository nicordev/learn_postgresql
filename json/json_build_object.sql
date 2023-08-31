
SELECT JSON_BUILD_OBJECT('id', 12, 'title', 'hello');

select 
    json_build_object('promotions', jsonb_build_object('one', 1, 'two', 2), 'items', ARRAY[1, 2]) AS json_test;

select 
    'hello',
    json_build_object(
        'id', 123,
    )
;
