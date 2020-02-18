#!/bin/bash
AZ_CONTAINER=$1; shift
AZ_NAME=$1; shift
AZ_PATH=$1; shift

if [[ -z "$AZ_PATH" ]]; then
  AZ_PATH="$AZ_NAME"
fi

tempdir=$(mktemp -d)
mkdir -p "$tempdir/$AZ_NAME"
mkdir -p "$(dirname $AZ_PATH)"
az storage blob download-batch -d "$tempdir" -s "$AZ_CONTAINER" --pattern "$AZ_NAME/*"
mv "$tempdir/$AZ_NAME" "$AZ_PATH"
