#!/bin/bash

# fail if there's any error
set -eu

# build docker image
sudo docker build -t moso-interior .