#!/bin/bash
AZ_CONTAINER=$1; shift
AZ_NAME=$1; shift
AZ_PATH=$1; shift

mkdir -p "$AZ_PATH/$AZ_NAME"
az storage blob download-batch -d "$AZ_PATH" -s "$AZ_CONTAINER" --pattern "$AZ_NAME/*"
