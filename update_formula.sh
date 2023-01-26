#!/bin/bash

set -e -u

BINARY_BASE_URL=$(echo ${BINARY_BASE_URL} | sed 's/\//\\\//g')
VERSION=$(echo "${VERSION}" | cut -d "v" -f2)
OUTPUT_PATH="Formula/${OUTPUT_FILE_NAME}"

mkdir -p Formula
cp klotho.rb.tmpl $OUTPUT_PATH
git add $OUTPUT_PATH

sed -i "s/{{FORMULA_NAME}}/${FORMULA_NAME}/g" $OUTPUT_PATH
sed -i "s/{{BINARY_BASE_URL}}/${BINARY_BASE_URL}/g" $OUTPUT_PATH
sed -i "s/{{VERSION}}/${VERSION}/g" $OUTPUT_PATH
sed -i "s/{{MACOS_ARM_SHA256}}/$(shasum -a 256 -b klotho_darwin_arm64 | cut -d " " -f1)/" $OUTPUT_PATH
sed -i "s/{{MACOS_INTEL_SHA256}}/$(shasum -a 256 -b klotho_darwin_amd64 | cut -d " " -f1)/" $OUTPUT_PATH
sed -i "s/{{LINUX_INTEL_SHA256}}/$(shasum -a 256 -b klotho_linux_amd64 | cut -d " " -f1)/" $OUTPUT_PATH
