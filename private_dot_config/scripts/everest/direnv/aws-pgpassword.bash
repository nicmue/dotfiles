#!/bin/bash

source ${BASH_SOURCE%/*}/../aws-login.bash $1

export PGPASSWORD=$(aws rds generate-db-auth-token --hostname $PGHOST --port 5432 --region us-east-1 --username $PGUSER --profile=$1)
