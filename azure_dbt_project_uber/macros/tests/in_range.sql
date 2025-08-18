{% test in_range(model, column_name, min_value, max_value) %}
  SELECT
    {{ column_name }}
  FROM
    {{ model }}
  WHERE
    {{ column_name }} not between {{min_value}} and {{max_value}}
{% endtest %}