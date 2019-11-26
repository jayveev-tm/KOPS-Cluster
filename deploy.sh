#!/bin/bash
#Exit immediately if non-zero exit code is returned by a command
#set -e

source export.sh
kops create cluster --zones us-east-2a ${NAME}
kops replace -f ./templates/ig.yaml
kops replace -f ./templates/cluster.yaml
kops create secret --name ${NAME} sshpublickey admin -i key.pub
kops update cluster ${NAME} --yes
