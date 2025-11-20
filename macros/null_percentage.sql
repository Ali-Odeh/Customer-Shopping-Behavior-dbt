{% macro null_percentage(column_name) %}
    ROUND(
        100 * AVG(
            CASE WHEN {{ column_name }} IS NULL THEN 1 ELSE 0 END
        ), 2
    )
{% endmacro %}
