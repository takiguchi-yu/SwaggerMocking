#!/bin/bash
set -exo pipefail

docker run --rm \
  -v "${PWD}/gen:/gen" \
  -v "${PWD}/swagger:/swagger" \
  swaggerapi/swagger-codegen-cli-v3 "$@"
