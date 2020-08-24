#!/bin/bash
# script to run test files for the lambda function
set -eo pipefail
python3 function/lambda_function.test.py
