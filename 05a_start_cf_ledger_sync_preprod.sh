#!/bin/bash
set -x
export CARDANO_NODE_CONFIG_PATH=/home/maarten/src/lantana/node-config/preprod/config.json
export NETWORK=preprod
cd cf-ledger-sync/
java -jar application/build/libs/ledger-sync-application-0.0.1-3cceb3d-SNAPSHOT.jar