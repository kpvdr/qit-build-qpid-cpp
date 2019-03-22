#! /bin/bash

. ./scripts/common.sh

if [[ ! -d ${BUILD_DIR} ]]; then
    mkdir -p ${BUILD_DIR}
fi
cd ${BUILD_DIR}

cmake -DCMAKE_INSTALL_PREFIX="${CMAKE_INSTALL_PREFIX}" -DProton_CHECKOUT_DIR="${JENKINS_HOME}/workspace/${PROTON_PROJ_DIR}" -DENABLE_VALGRIND="false" -DBUILD_SASL="false" ..
make
