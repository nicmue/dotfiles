#!/bin/bash

export PGUSER=$USER
export PGDATABASE=$TENANT

source ${BASH_SOURCE%/*}/../aws-login.bash $AWS_PROFILE
source ${BASH_SOURCE%/*}/aws-pghost.bash $AWS_PROFILE $TENANT

source ${BASH_SOURCE%/*}/aws-pgpassword.bash $AWS_PROFILE $PGHOST $PGUSER
source ${BASH_SOURCE%/*}/kernel.bash
