#!/bin/bash
# build layer to hold the environments resources
set -eo pipefail
rm -rf package
cd function
pip install --target ../package/python -r requirements.txt
