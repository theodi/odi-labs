---
---
<p>The ODI undertakes research on a broad range of areas related to open data.</p>

<ul>
{% for res in site.research %}
  <li><a href='{{res.url}}'>{{res.title}}</a></li>
{% endfor %}
</ul>
