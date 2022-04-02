#!/bin/sh -l

namespace="$(grep namespace: galaxy.yml | cut -d ' ' -f 2)"
name="$(grep name: galaxy.yml | cut -d ' ' -f 2)"
version="$(grep version: galaxy.yml | cut -d ' ' -f 2)"

tarball="/github/workspace/$namespace-$name-$version.tar.gz"

ansible-galaxy collection build --token $1 --server $2
ansible-galaxy collection publish --token $1  --server $2 $tarball
