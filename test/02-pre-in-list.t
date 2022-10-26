#!/usr/bin/env bash

source test/init

export PATH=$PWD/bin:$PATH

+is-cmd pandoc ||
  plan skip-all "Test requires pandoc to be installed"

pod=$(md2man --pod < <(cat <<'...'
* foo
  ```
  xxx
  ```
* bar
...
))

has "$pod" $'xxx\n\n=item * bar' \
  "Blank line after pre in list element"

done-testing
