#!/bin/bash

export PGHOST=tenant-fe49af35-477c-480e-9f6e-a6be8228b76a.cluster-cqim8xet1dbv.us-east-1.rds.amazonaws.com
export PGUSER=postgres_rw_1742346983

export PGDATABASE=$(echo $PGHOST | cut -d '.' -f 1)

source ${BASH_SOURCE%/*}/secrets.bash
source ${BASH_SOURCE%/*}/../kernel.bash
