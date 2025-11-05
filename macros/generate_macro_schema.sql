{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is not none -%}

        {{ target.name }}_{{ custom_schema_name }}

    {%- else -%}

        {{ default_schema }}

    {%- endif -%}

{%- endmacro %}