#! /bin/bash

#SCRIPT_NAME=$(basename $0)
SCRIPT_NAME=$(basename $BASH_SOURCE)
POSTGRESQL_SERVICE='my-postgresql-database'
PSQL="docker-compose exec ${POSTGRESQL_SERVICE} psql --username postgres --dbname postgres"


executeSqlFile() {
    if [ $# -lt 1 ]; then
        echo -e "${SCRIPT_NAME} ${FUNCNAME[0]} \e[33mfileNameHere\e[0m"
        exit 1
    fi

    $PSQL --file="$1"
}

start() {
    docker-compose up --detach --remove-orphans --force-recreate
}

stop() {
    docker-compose down
}

psql() {
    $PSQL
}

bash() {
    docker-compose exec ${POSTGRESQL_SERVICE} bash
}

# Display the source code of this file
howItWorks() {
    cat $0
}

# List all functions that do not begin with an underscore _
_listAvailableFunctions() {
    cat $0 | grep -E '^[a-z]+[a-zA-Z0-9]*\(\) \{$' | sed 's#() {$##'
}

if [ $# -eq 0 ]; then
    _listAvailableFunctions
    exit
fi

$@
