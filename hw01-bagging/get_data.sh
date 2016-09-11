#!/bin/bash

mkdir -p data

# ==== Download titanic ====
if [ ! -f ./data/train.csv ]; then
  curl -o ./data/train.csv https://raw.githubusercontent.com/ml-mipt/ml-mipt-part2/master/home_works/hw01_bvt_bagging/data/train.csv
fi

# ==== Download adult ====
if [ ! -f ./data/adult.data ]; then
  curl -o ./data/adult.data https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data
fi

# ==== Download cifar10 ====
if [ ! -d ./data/cifar10 ]; then
  mkdir ./data/cifar10
  curl -o ./data/cifar10/cifar-10-python.tar.gz https://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz
  tar -xvzf ./data/cifar10/cifar-10-python.tar.gz -C ./data/cifar10/
  rm ./data/cifar10/cifar-10-python.tar.gz
fi

