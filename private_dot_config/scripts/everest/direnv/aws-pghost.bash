#!/bin/bash

if [ "$#" -ne 2 ]; then
    printf 'ERROR! You must provide exactly 2 arguments (profile and db-cluster-id)!\n' >&2
    exit 1
fi

export PGHOST=$(aws rds describe-db-clusters --query="DBClusters[*].Endpoint" --profile=$1 --db-cluster-id=$2 --output=text)
