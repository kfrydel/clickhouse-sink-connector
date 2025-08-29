#!/bin/bash

set -eou pipefail

cd sink-connector
mvn install -DskipTests=true
cd ../sink-connector-lightweight
mvn install -DskipTests=true
cd ..
