#!/bin/bash

export PGHOST=$(aws rds describe-db-clusters --query="DBClusters[*].Endpoint" --profile=$1 --db-cluster-id=$2 --output=text)
