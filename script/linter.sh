#!/bin/bash

set -eux

cd "$(dirname "$0")/../"

fix=${FIX:=false}

if "${fix}"; then
  option='format -i'
else
  option='lint'
fi

files=$(git ls-files | grep ".\+\.swift")

for file in ${files};
do
  swift run swift-format ${option} "${file}"
done