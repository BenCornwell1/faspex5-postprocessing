#!/bin/bash

dir=$(echo $1 | jq '.faspex_pkg_directory') 

echo "Dir = $dir" >> /tmp/output.txt