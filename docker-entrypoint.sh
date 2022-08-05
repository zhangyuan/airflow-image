#!/bin/bash

set -e

VAULT_SECRECTS_DIRECTORY=${VAULT_SECRECTS_DIRECTORY:-"/vault/secrets"}

if [ -d "${VAULT_SECRECTS_DIRECTORY}" ]; then
    shopt -s nullglob
    for entry in ${VAULT_SECRECTS_DIRECTORY}/*.sh; do
        echo "source $entry"
        source $entry
    done
fi

export CONNECTION_CHECK_MAX_COUNT=${1}
shift
exec /entrypoint "${@}"
