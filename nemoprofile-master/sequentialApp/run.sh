#!/usr/bin/env bash

set -e

# usage
( test -z $2 ) &&
  echo "usage: runSequential.sh data_file motif_size random_subgraph_count directed(optional)" &&
  echo "if directed graph, give 1 for directed. Otherwise, do not provide the last parameter" &&
  echo "  ex for undirected: run.sh path/to/data 3 1000" &&
  echo "  ex for directed: run.sh path/to/data 3 1000 1" &&
  exit 1

# execution variables
nemo_jar="${HOME}/nemolib/nemolib-master/target/nemolib-0.1-SNAPSHOT.jar"
data_file=$1
motif_size=$2
rand_graphs=$3
output_path=$4

# execute
time java -Xms1g -Xmx8g -cp ${nemo_jar}:out:. SequentialApp ${data_file} ${motif_size} ${rand_graph} ${output_path}
