{% set rules = {
    '1.1.1':   { 'Disable unused filesystems':                                          True }
} %}

os_family

{% if grains['osfinger'] == 'Ubuntu-20.04' %}

include:
{% for rule in rules %}
{% for desc, check in rules[rule].items() %}
{% if check %}

{% if rules[rule] %}
    {% if not rule in salt['pillar.get']('cis:ignore:rules') %}
    - cis.rules.{{ rule|replace('.', '_') }}
    {% endif %}
{% endif %}

{% endif %}
{% endfor %}
{% endfor %}

{% endif %}
