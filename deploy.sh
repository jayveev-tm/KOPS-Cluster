#!/bin/bash
#Exit immediately if non-zero exit code is returned by a command
#set -e

kops create cluster --zones us-east-2a ${NAME}
kops replace -f ./kops/ig.yaml
kops replace -f ./kops/cluster.yaml
kops create secret --name ${NAME} sshpublickey admin -i key.pub
kops update cluster ${NAME} --yes
kops rolling-update cluster ${NAME} --cloudonly --yes