#!/bin/bash
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.16.3/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
