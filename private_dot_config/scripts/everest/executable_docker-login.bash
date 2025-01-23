#!/bin/bash

source ${BASH_SOURCE%/*}/aws-login.bash everest-ecr

aws ecr get-login-password --region us-east-1 --profile everest-ecr | docker login --username AWS --password-stdin 923621808594.dkr.ecr.us-east-1.amazonaws.com
