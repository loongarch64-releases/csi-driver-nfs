#!/bin/bash
set -eou pipefail

UPSTREAM_OWNER=kubernetes-csi
UPSTREAM_REPO=csi-driver-nfs

curl -s https://api.github.com/repos/"$UPSTREAM_OWNER"/"$UPSTREAM_REPO"/releases/latest \
     | jq -r ".tag_name"
