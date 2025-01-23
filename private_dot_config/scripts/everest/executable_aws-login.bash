#!/bin/bash

SSO_ACCOUNT=$(aws sts get-caller-identity --query "Account" --profile $1)
if [ ${#SSO_ACCOUNT} -eq 14 ];  then
    echo "aws session '$1' still valid";
else
    aws sso login --profile=$1
fi
