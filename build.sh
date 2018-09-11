#!/bin/bash
pushd module1 && ./build.sh
popd
pushd module2 && ./build.sh
popd
