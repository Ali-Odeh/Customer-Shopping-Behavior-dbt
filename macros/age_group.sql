{% macro age_group(col) %}
    case
        when {{ col }} < 20 then '<20'
        when {{ col }} between 20 and 40 then '20-40'
        when {{ col }} between 40 and 60 then '40-60'
        when {{ col }} > 60 then '>60'
        else 'Unknown'
    end
{% endmacro %}
