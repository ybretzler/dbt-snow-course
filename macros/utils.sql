-- Converts an integer cents column to a decimal dollar amount.
-- Usage:  {{ cents_to_dollars('price_cents') }}
{% macro current_timestamp_utc() %}
    CONVERT_TIMEZONE('UTC', CURRENT_TIMESTAMP())
{% endmacro %}