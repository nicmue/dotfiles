#!/bin/bash

export AWS_PROFILE=everest-internal
export PGHOST=tenant-628c3eb3-9351-40b7-a927-5be2aefec816.cluster-cqim8xet1dbv.us-east-1.rds.amazonaws.com
export PGUSER=nico@everest-erp.com

export PGDATABASE=$(echo $PGHOST | cut -d '.' -f 1)

source ${BASH_SOURCE%/*}/../aws-pgpassword.bash $AWS_PROFILE
source ${BASH_SOURCE%/*}/../kernel.bash
