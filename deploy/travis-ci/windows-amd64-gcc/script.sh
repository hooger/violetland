#!/bin/bash
set -e


# @see http://stackoverflow.com/a/246128/2534648
DIRECTORY_OF_THIS_FILE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "${DIRECTORY_OF_THIS_FILE}/../travis-ci.sh"


# Build
(cd "${ROOT_DIRECTORY}/deploy/docker" && make "${TARGET}")

