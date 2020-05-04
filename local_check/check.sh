docker run --rm -v $PWD:/work prh --rules rules/prh/prh.yml --verify articles/* > check.log
docker run --rm -v $PWD:/work redpen --lang ja --format markdown --limit 0 --conf rules/redpen/redpen-conf.xml articles/* >> check.log
docker run --rm -v $PWD:/work textlint --format compact --config rules/textlint/.textlintrc articles/* >> check.log
