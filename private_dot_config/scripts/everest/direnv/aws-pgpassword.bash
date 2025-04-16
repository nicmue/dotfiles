#!/bin/bash

export PGPASSWORD=$(aws rds generate-db-auth-token --profile=$1 --hostname $2 --port 5432 --region us-east-1 --username $3)
