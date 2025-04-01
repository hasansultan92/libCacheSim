#!/bin/bash 
set -euo pipefail


SORUCE=$(readlink -f ${BASH_SOURCE[0]})
DIR=$(dirname ${SORUCE})

cd ${DIR}/../;
mkdir _build || true 2>/dev/null;
cd _build;
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug ..;
make -j;
cd ${DIR}; 

