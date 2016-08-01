---
---
The ODI undertakes research on a broad range of areas related to open data.

<dl>
{% for topic in site.research %}
  <dt>
    <a href='{{ topic.url }}'>{{ topic.title }}</a>
  </dt>
  <dd>
    {{ topic.blurb }}
  </dd>
{% endfor %}
</dl>
