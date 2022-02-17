#!/usr/bin/env bash

# This is necessary because Liquid doesn't work the way I want.

TASK=$(cat list.md | head -n1)
TASK=${TASK#"- "}

cat > index.md << EOM
---
description: $TASK
---

What is Richard focusing on?

In this order:

{% include_relative list.md %}
EOM

echo 'Automatically generated index.md.'

exit
