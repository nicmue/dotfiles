#!/bin/bash

export AWS_PROFILE=everest-internal
export PGHOST=tenant-5a01987d-44cd-4978-a8aa-a8e4539a9493.cluster-cqim8xet1dbv.us-east-1.rds.amazonaws.com
export PGUSER=nico@everest-erp.com

export PGDATABASE=$(echo $PGHOST | cut -d '.' -f 1)

source ${BASH_SOURCE%/*}/../aws-pgpassword.bash $AWS_PROFILE
source ${BASH_SOURCE%/*}/../kernel.bash
