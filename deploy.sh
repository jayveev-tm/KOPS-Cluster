#!/bin/bash
#Exit immediately if non-zero exit code is returned by a command
set -e

source export.sh
kops create cluster --zones us-east-2a ${NAME}
#kops replace -f ig.yaml
#kops replace -f cluster.yaml
kops create secret --name ${NAME} sshpublickey admin -i key.pub
kops update cluster ${NAME} --yes
