select jsonb_array_elements(json_table_alias.property_name -> 'child_property_array') -> 'array_item_property' -> 'one_last_property' from json_table_name json_table_alias

select * from json_table_name json_table_alias, jsonb_array_elements(json_table_alias.json_property_name -> 'child_property_array') property_alias
where property_alias -> 'otherProperty' ->> 'oneLastProperty' = 'myValue'