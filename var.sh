#!/bin/bash -f

#var.sh

awk '
BEGIN {x=5}
{print x, $x}
END {print "\nDONE"}
'

