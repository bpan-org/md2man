#!/usr/bin/env bash

source test/init

export PATH=$PWD/bin:$PATH

try md2man <<...
foo
<!-- a
  comment
-->
...

is "$rc" 0 "HTML comments are ok"

if [[ $rc -ne 0 ]]; then
  diag "$got"
fi

done-testing
