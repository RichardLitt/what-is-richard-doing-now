#!/usr/bin/env bash

# This is necessary because Liquid doesn't work the way I want.

TASK=$(cat todo.md | head -n1)
TASK=${TASK#"- "}
TASKS=$(cat todo.md | tail -n +2)

cat > index.md << EOM
---
description: $TASK
---

What is Richard focusing on?

## $TASK

Followed by:

$TASKS

EOM

echo 'Automatically generated index.md.'

exit
