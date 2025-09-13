#!/usr/bin/awk -f

BEGIN {
    print "table using while loop";

    i=1;
    x=17;

    while ( i<=10 ) {
        print x, " x ", i, " =\t", x*i;
        i+=1;
    }
exit;
}
