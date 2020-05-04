#!/bin/sh
prh --rules rules/prh/prh.yml --verify articles/* > prh.log || EXIT_CODE=$?

cat prh.log | bin/reviewdog -reporter=github-pr-review \
  -diff='git --no-pager diff origin/master' \
  -efm='%f(%l,%c): %m' \
  -name=prh

exit ${EXIT_CODE}