#!/bin/bash
#

set -e

handle_error() {
	echo "Error occured in script at line: $1"
	exit 1
}

trap 'handle_error $LINENO' ERR

ls /test1234
echo "This line will not execute."

