#! /bin/bash

. ./scripts/common.sh

error_found=flase

if [[ -f ${CMAKE_INSTALL_PREFIX}/sbin/qpidd ]]; then
    echo "${CMAKE_INSTALL_PREFIX}/sbin/qpidd file found - ok"
else
    echo "error: ${CMAKE_INSTALL_PREFIX}/sbin/qpidd file missing"
    error_found=true
fi

if [[ "${error_found}" = true ]]; then
    echo "ERROR: missing file - exiting with error"
    exit 1
fi

