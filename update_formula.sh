#!/bin/bash

set -e

BINARY_BASE_URL=$(echo ${BINARY_BASE_URL} | sed 's/\//\\\//g')
VERSION=$(echo "${VERSION}" | cut -d "v" -f2)

mkdir -p Formula
cp klotho.rb.tmpl Formula/klotho.rb

sed -i "s/{{BINARY_BASE_URL}}/${BINARY_BASE_URL}/g" Formula/klotho.rb
sed -i "s/{{VERSION}}/${VERSION}/g" Formula/klotho.rb
sed -i "s/{{MACOS_ARM_SHA256}}/$(shasum -a 256 -b klotho_darwin_arm64 | cut -d " " -f1)/" Formula/klotho.rb
sed -i "s/{{MACOS_INTEL_SHA256}}/$(shasum -a 256 -b klotho_darwin_amd64 | cut -d " " -f1)/" Formula/klotho.rb
sed -i "s/{{LINUX_INTEL_SHA256}}/$(shasum -a 256 -b klotho_linux_amd64 | cut -d " " -f1)/" Formula/klotho.rb
