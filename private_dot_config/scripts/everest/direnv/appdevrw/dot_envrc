#!/bin/bash

export AWS_PROFILE=everest-internal
export PGHOST=tenant-8b68e473-5988-4c03-ab6c-633198385d6a.cluster-cqim8xet1dbv.us-east-1.rds.amazonaws.com
export PGUSER=nico@everest-erp.com

export PGDATABASE=$(echo $PGHOST | cut -d '.' -f 1)

source ${BASH_SOURCE%/*}/../aws-pgpassword.bash $AWS_PROFILE
source ${BASH_SOURCE%/*}/../kernel.bash
