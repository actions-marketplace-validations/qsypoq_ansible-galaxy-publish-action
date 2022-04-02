#!/bin/sh -l

ansible-galaxy collection build --token $1 --server $2
ansible-galaxy collection publish --token $1  --server $2 ./pkg.tar.gz
