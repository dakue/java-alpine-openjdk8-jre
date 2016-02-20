#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]
then
    set -- java "$@"
fi

if [ "$1" = 'java' ]
then
    shift
    set -- java "$(agent-bond-opts)" "$@"
fi

exec "$@"
