#! /usr/bin/env bash

address=$(curl -s https://api.ipify.org)
result=$(curl -s https://api.iplocation.net/?ip="${address}")

script_dir=$(dirname -- "${BASH_SOURCE[0]}")

date | tee -a "${script_dir}/result"
echo "${result}" | tee -a "${script_dir}/result"

