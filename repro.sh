#!/bin/bash

echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo "Running 'go build' in ./foo"
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
pushd foo
go build

echo
echo

echo "Current contents of 'go.mod':"
echo ============================================
cat go.mod
echo ============================================

echo
echo

echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo "Running 'go mod tidy' in ./foo"
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
go mod tidy

echo
echo

echo "Current contents of 'go.mod':"
echo ============================================
cat go.mod
echo ============================================

echo
echo
echo "Notice that 'github.com/dustin/gojson' has disappeared!"
echo
echo

echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo "Running 'go build -mod=readonly' in ./foo"
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
go build -mod=readonly
