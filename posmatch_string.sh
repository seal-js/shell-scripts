#! /bin/bash

filename="/root/admin/monitoring/process.sh"

echo "String: '${filename}"

echo "Replaced at the beginning:" ${filename/#\/root/\/tmp}
echo "Replaced at the end": ${filename/%.*/.ksh}