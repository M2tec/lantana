#!/bin/bash

# Install cardano node
mkdir cardano-node
wget https://github.com/input-output-hk/cardano-node/releases/download/8.1.2/cardano-node-8.1.2-linux.tar.gz 
tar -xf cardano-node-8.1.2-linux.tar.gz --directory cardano-node

# Install cardano node config files
wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/config.json

wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/topology.json
wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/topology-p2p.json

wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/byron-genesis.json
wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/shelley-genesis.json
wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/alonzo-genesis.json
wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/conway-genesis.json

wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/db-sync-config.json
wget -P node-config/mainnet https://book.world.dev.cardano.org/environments/mainnet/submit-api-config.json


mkdir -p node-config/preprod
mkdir -p node-db/preprod
mkdir -p node-socket/preprod
mkdir -p ledger-state/preprod

wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/config.json

wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/topology.json
wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/topology-p2p.json

wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/byron-genesis.json
wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/shelley-genesis.json
wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/alonzo-genesis.json
wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/conway-genesis.json

wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/db-sync-config.json
wget -P node-config/preprod https://book.world.dev.cardano.org/environments/preprod/submit-api-config.json


# Install postgrest
mkdir postgrest
wget https://github.com/PostgREST/postgrest/releases/download/v11.2.2/postgrest-v11.2.2-linux-static-x64.tar.xz
tar -xf postgrest-v11.2.2-linux-static-x64.tar.xz --directory postgrest

# Install postgresql
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo tee /etc/apt/trusted.gpg.d/ACCC4CF8.asc

sudo apt install -y postgresql-15
sudo apt install -y pgadmin4-web



