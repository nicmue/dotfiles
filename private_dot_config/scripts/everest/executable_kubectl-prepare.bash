#!/bin/bash

if [ "$#" -ne 1 ]; then
    printf 'ERROR! You must provide one and only one argument!\n' >&2
    exit 1
fi

source ${BASH_SOURCE%/*}/aws-login.bash $1

CLUSTER=$(aws eks list-clusters --profile $1 | jq -r '.clusters[0]')

aws eks update-kubeconfig --name $CLUSTER --profile $1 --alias $1

kubectx $1
