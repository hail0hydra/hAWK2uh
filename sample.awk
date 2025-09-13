#!/usr/bin/awk -f

BEGIN {

# Print the squares from 1 to 10 the first way

	i=1;
    
    print "While loop:\n"

	while (i <= 4) {
		print "The square of ", i, " is ", i*i;
        printf "The square is %d\n", i*i; # notice this please
		i = i+1;
	}

# do it again, using more concise code
    print "\nFor loop:\n"

	for (i=1; i <= 4; i++) {
		print "The square of ", i, " is ", i*i;
	}

# now end
exit;
}
