#! /bin/bash

if [[ -z ${JENKINS_HOME+x} ]]; then
    JENKINS_HOME="/var/lib/jenkins"
fi
echo "JENKINS_HOME=${JENKINS_HOME}"

function get_dir_name {
    local base=${1##*/}
    GIT_DIR=${base%.*}
}

JOB_NAME="build-qpid-cpp"
GIT_REPO="https://github.com/apache/qpid-cpp.git"
get_dir_name ${GIT_REPO}

CMAKE_INSTALL_PREFIX="${JENKINS_HOME}/workspace/install"
echo "CMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}"

JOB_DIR="${JENKINS_HOME}/workspace/${JOB_NAME}"
BUILD_DIR="${GIT_DIR}/build"
