---
description: A place where I announce in public what I am doing at the moment.
project: 
---

What is Richard focusing on?

## Sitting and thinking about youth and work and the nature of peace, while having a Cortado in Edinburgh next to Old College

{% if page.project %}
  {% assign project = site.data.projects[page.project] %}
  Read more about <a href="https://burntfen.com/projects/{{ page.project }}">{{ project.title }}</a>.
{% endif %}

