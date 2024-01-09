export CARDANO_NODE_CONFIG_PATH=/home/maarten/src/lantana/node-config/mainnet/config.json
export NETWORK=mainnet
cd cf-ledger-sync_mainnet/
java -jar application/build/libs/ledger-sync-application-0.0.1-09f240f-SNAPSHOT.jar
