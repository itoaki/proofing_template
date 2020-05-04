docker run --rm -v $PWD:/work prh --rules rules/prh/prh.yml --diff articles/* > check.log
docker run --rm -v $PWD:/work redpen --lang ja --limit 0 --format Markdown --conf rules/redpen/redpen-conf.xml --result-format json articles/* >> check.log
docker run --rm -v $PWD:/work textlint --format compact --config rules/textlint/.textlintrc articles/* >> check.log
