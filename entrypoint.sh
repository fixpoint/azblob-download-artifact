#!/bin/bash
AZ_NAME=$1; shift
AZ_PATH=$1; shift

mkdir -p "$AZ_PATH"
az storage blob download-batch -d "$AZ_PATH" -s "$AZ_NAME"
