#!/bin/bash
echo "REMOVE PREVIOUS BUILD"
rm -rf build

echo "BUILDING"
mkdir build
g++ -Wall -o build/BiggestUnInt module1/BiggestUnInt.cc
g++ -Wall -o build/HelloWorld module1/HelloWorld.cpp
g++ -Wall -o build/SimpleClass module1/SimpleClass.cc

g++ -Wall -o build/BiggestUnInt module2/BiggestUnInt1.cc
g++ -Wall -o build/HelloWorld module2/HelloWorld1.cpp
g++ -Wall -o build/SimpleClass module2/SimpleClass1.cc
RC=$?

if [ $RC -ne 0 ]; then
  echo "BUILD FAILURE"
else
  echo "BUILD SUCCESS"
fi
