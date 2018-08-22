#!/bin/bash
echo "REMOVE PREVIOUS BUILD"
rm -rf build

echo "BUILDING"
mkdir build
g++ -Wall -o build/BiggestUnInt module1/src/BiggestUnInt.cc
g++ -Wall -o build/HelloWorld module1/src/HelloWorld.cpp
g++ -Wall -o build/SimpleClass module1/src/SimpleClass.cc

g++ -Wall -o build/BiggestUnInt module2/src/BiggestUnIntt.cc
g++ -Wall -o build/HelloWorld module2/src/HelloWorldt.cpp
g++ -Wall -o build/SimpleClass module2/src/SimpleClasst.cc
RC=$?

if [ $RC -ne 0 ]; then
  echo "BUILD FAILURE"
else
  echo "BUILD SUCCESS"
fi
