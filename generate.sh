#!/usr/bin/env bash

# This is necessary because Liquid doesn't work the way I want.

TASK=$(cat todo.md | head -n1)
TASK=${TASK#"- "}
TASKS=$(cat todo.md | tail -n +2)
# Only works once TASKS=$(echo $TASKS | sed 's/@[a-zA-Z\-]* - /\n- /g')

if [[ $TASK == *"@"* ]]; then
  # Get the project
  PROJECT=$(cat todo.md | head -n1 | awk 'NF>1{print $NF}')
  PROJECT=${PROJECT#"@"}
  if grep -Fq "$PROJECT" _data/projects.yml
  then
      echo 'Found in projects, acting accordingly...'
  else
      echo 'Project not found.'
      PROJECT=""
  fi
  # Trim the project from the task
  TASK=$(echo $TASK |  awk '{$NF="";sub(/[ \t]+$/,"")}1')
else
  PROJECT=""
fi

cat > index.md << EOM
---
description: A place where I announce in public what I am doing at the moment.
project: $PROJECT
---

What is Richard focusing on?

## $TASK

{% if page.project %}
  {% assign project = site.data.projects[page.project] %}
  Read more about <a href="https://burntfen.com/projects/{{ page.project }}">{{ project.title }}</a>.
{% endif %}

This will be followed by:

$TASKS

EOM

echo 'Automatically generated index.md.'

exit
