---
description: A place where I announce in public what I am doing at the moment.
project: 
---

What is Richard focusing on?

## Reading "Green Mountain Club Nature Guide to Vermont's Long Trail"

{% if page.project %}
  {% assign project = site.data.projects[page.project] %}
  Read more about <a href="https://burntfen.com/projects/{{ page.project }}">{{ project.title }}</a>.
{% endif %}

