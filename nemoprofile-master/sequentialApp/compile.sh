#!/usr/bin/env bash

set -e

echo "Building program..."
if [ ! -d out ] ; then mkdir out; fi
rm -f out/*.class

nemo_jar="${HOME}/nemolib/nemolib-master/target/nemolib-0.1-SNAPSHOT.jar"

javac -cp ${nemo_jar} -d out ./src/main/java/edu/uwb/nemoprofile/SequentialApp.java

echo "Success! Use ./run.sh to execute."
