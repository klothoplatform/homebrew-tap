#!/bin/bash

set -e

BINARY_BASE_URL=$(echo ${BINARY_BASE_URL} | sed 's/\//\\\//g')
VERSION=$(echo "${VERSION}" | cut -d "v" -f2)

mkdir -p Formula
cp klotho.rb.tmpl "Formula/${OUTPUT_FILE_NAME}"

sed -i "s/{{FORMULA_NAME}}/${FORMULA_NAME}/g" Formula/${OUTPUT_FILE_NAME}
sed -i "s/{{BINARY_BASE_URL}}/${BINARY_BASE_URL}/g" Formula/${OUTPUT_FILE_NAME}
sed -i "s/{{VERSION}}/${VERSION}/g" Formula/${OUTPUT_FILE_NAME}
sed -i "s/{{MACOS_ARM_SHA256}}/$(shasum -a 256 -b klotho_darwin_arm64 | cut -d " " -f1)/" Formula/${OUTPUT_FILE_NAME}
sed -i "s/{{MACOS_INTEL_SHA256}}/$(shasum -a 256 -b klotho_darwin_amd64 | cut -d " " -f1)/" Formula/${OUTPUT_FILE_NAME}
sed -i "s/{{LINUX_INTEL_SHA256}}/$(shasum -a 256 -b klotho_linux_amd64 | cut -d " " -f1)/" Formula/${OUTPUT_FILE_NAME}
