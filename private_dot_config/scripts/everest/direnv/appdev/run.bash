#!/bin/bash

export PGHOST=tenant-8b68e473-5988-4c03-ab6c-633198385d6a.cluster-cqim8xet1dbv.us-east-1.rds.amazonaws.com
export PGUSER=kernel_ro

export PGDATABASE=$(echo $PGHOST | cut -d '.' -f 1)

source ${BASH_SOURCE%/*}/secrets.bash
source ${BASH_SOURCE%/*}/../kernel.bash
