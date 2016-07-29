{% assign key = 'title' %}
{% if include.key %}
  {% assign key = include.key %}
{% endif %}

<ul>
{% for thing in include.things %}
  <li><a href='{{thing.url}}'>{{thing[key]}}</a></li>
{% endfor %}
</ul>
