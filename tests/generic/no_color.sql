{% test no_color(model, column_name, color_name) %}

select *
from {{ model }}
where {{ column_name }} LIKE "{{ color_name }}"

{% endtest %}