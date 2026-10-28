{% macro clean_currency(column_name) %}
    TRY_CAST(REPLACE(REPLACE({{ column_name }}, '$', ''), ',', '') AS FLOAT)
{% endmacro %}