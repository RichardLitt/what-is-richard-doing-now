#!/usr/bin/env bash

# This is necessary because Liquid doesn't work the way I want.

TASK=$(cat todo.md | head -n1)
TASK=${TASK#"- "}

cat > index.md << EOM
---
description: $TASK
---

What is Richard focusing on?

In this order:

{% include_relative todo.md %}
EOM

echo 'Automatically generated index.md.'

exit
