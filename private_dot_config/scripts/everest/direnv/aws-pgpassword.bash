#!/bin/bash

if [ "$#" -ne 3 ]; then
    printf 'ERROR! You must provide exactly 3 arguments (profile, hostname and username)!\n' >&2
    exit 1
fi

export PGPASSWORD=$(aws rds generate-db-auth-token --profile=$1 --hostname $2 --port 5432 --region us-east-1 --username $3)
