#! /bin/bash

. ./scripts/common.sh

DEFAULT_CONFIG_PATH="${CMAKE_INSTALL_PREFIX}/etc/qpid-dispatch"

cd ${BUILD_DIR}
make install

# Update config file
QPID_CPP_CONF_FILE=${CMAKE_INSTALL_PREFIX}/etc/qpid/qpidd.conf
QPID_CPP_D2N_CONF_FILE=${CMAKE_INSTALL_PREFIX}/etc/qpid/qpidd.d2n.conf
cp ${QPID_CPP_CONF_FILE} ${QPID_CPP_CONF_FILE}.bak
cp ${QPID_CPP_CONF_FILE} ${QPID_CPP_D2N_CONF_FILE}
sed -i -f ${JOB_DIR}/qpidcpp.sed ${QPID_CPP_CONF_FILE}
sed -i -f ${JOB_DIR}/qpidcpp.d2n.sed ${QPID_CPP_D2N_CONF_FILE}
