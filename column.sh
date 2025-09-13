#!/bin/bash -f 

# column=$1
#
# awk '{print $column1}' # issue
#
# awk "{print \$$column}" # my soultion
#
# awk '{ print $'"$column"' }' # author's solution

column="${1:-1}" # setting a default value

awk '{print $'"$column"'}'
