#!/bin/bash
set -x 

# Install cf-ledger-sync
wget https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb
sudo dpkg -i jdk-21_linux-x64_bin.deb
git clone https://github.com/cardano-foundation/cf-ledger-sync.git
cd cf-ledger-sync
./gradlew clean build -x test

cp application.properties cf-ledger-sync/config/

cd cf-ledger-sync
./gradlew clean build -x test
java -jar application/build/libs/ledger-sync-application-0.0.1-3cceb3d-SNAPSHOT.jar

