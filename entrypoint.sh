#!/bin/bash
AZ_CONTAINER=$1; shift
AZ_NAME=$1; shift
AZ_PATH=$1; shift

if [[ -z "$AZ_PATH" ]]; then
  AZ_PATH="$AZ_NAME"
fi

# Download a specified file
az storage blob download -c "$AZ_CONTAINER" -n "$AZ_NAME" -f "$AZ_PATH"
