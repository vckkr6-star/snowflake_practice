{% test min_length(model, column_name,min_length ) %}

select *
from {{ model }}
where length({{ column_name }}) < 3

{% endtest %}