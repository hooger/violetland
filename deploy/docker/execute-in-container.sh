#!/bin/bash
#
# This script should be executed inside a container provided by mini-cross. It
# reads the target configuration from {@code /opt/violetland-environment.sh} and
# proceeds with building Violetland.



VIOLETLAND_ENVIRONMENT_FILE='/opt/violetland-environment.sh'


if [ ! -f "${VIOLETLAND_ENVIRONMENT_FILE}" ]; then
	(>&2 echo "Cannot access Violetland build environment description at \`${VIOLETLAND_ENVIRONMENT_FILE}'. Are you sure you are executing this script inside a mini-cross container?")
	exit 1
fi


source "${VIOLETLAND_ENVIRONMENT_FILE}"





# Check whether build environment file script has defined required variables
#
# @see https://stackoverflow.com/a/5947802
ERROR_START='\033[0;31m'
ERROR_END='\033[0m'

if [ "${VIOLETLAND_TARGET}" == "" ]; then
	(>&2 echo -e "${ERROR_START}Violetland build environment description \`${VIOLETLAND_ENVIRONMENT_FILE}' did not specify \`VIOLETLAND_TARGET'${ERROR_END}")
	exit 1
fi

if [ "${VIOLETLAND_CMAKE}" == "" ]; then
	(>&2 echo -e "${ERROR_START}Violetland build environment description \`${VIOLETLAND_ENVIRONMENT_FILE}' did not specify \`VIOLETLAND_CMAKE'${ERROR_END}")
	exit 1
fi

if [ "${VIOLETLAND_CXX}" == "" ]; then
	(>&2 echo -e "${ERROR_START}Violetland build environment description \`${VIOLETLAND_ENVIRONMENT_FILE}' did not specify \`VIOLETLAND_CXX'${ERROR_END}")
	exit 1
fi


VIOLETLAND_BUILD_TYPE="${1}"

if [ "${VIOLETLAND_BUILD_TYPE}" == "" ]; then
	(>&2 echo -e "${ERROR_START}Missing environment variable \`VIOLETLAND_BUILD_TYPE', has to be passed as first argument to this script${ERROR_END}")
	exit 1
fi





# Expand and enrich environment variables
export CMAKE="${VIOLETLAND_CMAKE}"
export CXX="${VIOLETLAND_CXX}"

# @see http://stackoverflow.com/a/246128/2534648
DIRECTORY_OF_THIS_FILE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ROOT_DIRECTORY="${DIRECTORY_OF_THIS_FILE}/../.."
BUILD_DIRECTORY="${ROOT_DIRECTORY}/build/${VIOLETLAND_TARGET}"
DIST_DIRECTORY="${ROOT_DIRECTORY}/dist/${VIOLETLAND_TARGET}"





# Clean and build
if [ -d "${BUILD_DIRECTORY}" ]; then
	rm -rf "${BUILD_DIRECTORY}"
fi
mkdir -p "${BUILD_DIRECTORY}"


if [ -d "${DIST_DIRECTORY}" ]; then
	rm -rf "${DIST_DIRECTORY}"
fi
mkdir -p "${DIST_DIRECTORY}"


(cd "${BUILD_DIRECTORY}" && $CMAKE -DCMAKE_BUILD_TYPE="${VIOLETLAND_BUILD_TYPE}" -DCMAKE_INSTALL_PREFIX="${DIST_DIRECTORY}" "${ROOT_DIRECTORY}" && make && make install) || exit 1

