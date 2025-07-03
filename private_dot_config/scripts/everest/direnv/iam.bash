#!/bin/bash

# if [ "$#" -ne 0 ]; then
#     printf 'ERROR! You must not provide any arguments!\n' >&2
#     exit 1
# fi

export PGUSER=$USER
export PGDATABASE=$TENANT

source ${BASH_SOURCE%/*}/../aws-login.bash $AWS_PROFILE
source ${BASH_SOURCE%/*}/aws-pghost.bash $AWS_PROFILE $TENANT

source ${BASH_SOURCE%/*}/aws-pgpassword.bash $AWS_PROFILE $PGHOST $PGUSER
source ${BASH_SOURCE%/*}/kernel.bash
