---
description: Making dinner
project: 
---

What is Richard focusing on?

## Making dinner

{% if page.project %}
  {% assign project = site.data.projects[page.project] %}
  Read more about <a href="https://burntfen.com/projects/{{ page.project }}">{{ project.title }}</a>.
{% endif %}

This will be followed by:



