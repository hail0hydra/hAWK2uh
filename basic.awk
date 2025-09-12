# !/bin/bash -f
# BEGIN {print "START"}
# {print }
# END {print "STOP"}


# BEGIN {print "File\t\tOwner"}
# {print $9, "\t", $3}
# END {print "- DONE -"}


# BEGIN {x=5} # setting up a variable
# {print x,$x}
# END


{print "user: \t",$3,"\t","file:",$9}
