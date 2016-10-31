#!/bin/bash
set -e
exec 2>&1
EXIT=1
PSQL='psql -h 127.0.0.1 -U postgres'
#####################################################################
SELECT="select version();"
echo $SELECT |${PSQL} > /dev/null && EXIT=0
exit $EXIT
