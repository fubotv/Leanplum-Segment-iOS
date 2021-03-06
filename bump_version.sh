#!/usr/bin/env bash
#
# LPM | Author: Ben Marten
# Copyright (c) 2017 Leanplum Inc. All rights reserved.
# Bumps the version in the constants file to a desired version.
#

#######################################
# Replaces a string in a file.
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#######################################
replace() {
  sed -i '' -e "s|$2|$3|g" "$1"
  cd "$(dirname "$1")" || echo "Change to directory containing the file failed."
  if ! git status --porcelain 2>/dev/null | grep "$(basename "$1")"; then
    echo "${RED}Error patching file: $1${NORMAL}" && exit 1
  fi
  cd ~- || echo "Change back to original folder failed."
  echo "Updated file: $1"
}

replace "README.md" "$1" "$2"
replace "LeanplumSegment.podspec" "$1" "$2"
