#!/bin/sh -l

ansible-galaxy collection build --token $1
ansible-galaxy collection publish --token $1 ./pkg.tar.gz
