#!/usr/bin/awk -f
BEGIN {
    i=1;

    print "\n\nUsing While loop:\n\n";

    while ( i<=10 ) {
        printf "The square of %d is:\t %i\n", i,i*i;
        i = i+1;
    }

    printf "\n\nUsing For loop:\n\n";

    for (i=0; i<=10; i++) {
        printf "Squre of %d is:\t  %i\n",i,i*i;
    }

exit;
}
