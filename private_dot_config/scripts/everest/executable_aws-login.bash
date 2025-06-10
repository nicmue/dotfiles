#!/bin/bash

if [ "$#" -ne 1 ]; then
    printf 'ERROR! You must provide one and only one argument!\n' >&2
    exit 1
fi

SSO_ACCOUNT=$(aws sts get-caller-identity --query "Account" --profile $1)
if [ ${#SSO_ACCOUNT} -eq 14 ];  then
    echo "aws session '$1' still valid";
    echo "";
else
    aws sso login --profile=$1
fi
