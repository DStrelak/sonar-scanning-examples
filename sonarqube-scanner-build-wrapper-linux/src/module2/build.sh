#!/bin/bash
echo "BUILDING"
mkdir build

g++ -Wall -o build/BiggestUnInt src/BiggestUnIntt.cc
g++ -Wall -o build/HelloWorld src/HelloWorldt.cpp
g++ -Wall -o build/SimpleClass src/SimpleClasst.cc

RC=$?

if [ $RC -ne 0 ]; then
  echo "BUILD FAILURE"
else
  echo "BUILD SUCCESS"
fi
