# simple notes

<br>

> - Whatever comes to mind & I think is important, I just type it in, no order.

<br>

- unline bash `$1` means **first column** of the line being processed.

- `awk` processes info line by line

- `$0` means entire line

example:

```bash
ls -l | awk '{print "prepending this: \t" $0}'
```

<br>


- change **delimitter/seperatore** with `-F` option

```awk
awk -F, '{print $2, "\t\t\t\t", $4}' sample.csv
```

- this will use `,` as delimitter and give us **2nd** and **4th** fields/items as output from the csv file.

<br>
<br>

- to execute an awk script with `.awk` or `.sh` extension, use:

```
awk -f awk-script
awk -f basic.awk one.txt
```


## variables

<br>

- `NR` is a variable **built-in** to count line number

```bash
cat notes.md | awk '{print NR $0}'
```

<br>

- we can define our own variables:

```awk
#!/bin/bash -f

#var.sh

awk '
BEGIN {x=5}
{print x, $x}
END {print "\nDONE"}
'
```

- and use this

```bash
chmod +x var.sh
ls -l | ./var.sh
```

<br>

# loops and conditionals and writing our own program in awk

<br>

- Till now I just used awk with file processing, but we can write our own programs in awk. It is not limited to file processing.

<br>

- Here is an example:

```awk
#!/usr/bin/awk -f

BEGIN {
    printf "Table of 7 using while loop\n";

    i=1;
    
    while (i<=10) {
        print 7, "x", i, " =\t", 7*i ;
        i+=1;
    }
exit;
}
```


- that was a **literal `while loop`** in awk. we can also do `for loop` using C syntax.


- if you look closely we use two things in the above script: `print` as well as `printf`. What is the diffrence????

<br>
<br>

# print vs printf

<br>

- I have just noticed two core differences, so I will just note down those two:

1. `printf`, just like in **C**, required format specifiers of data we want to print, i.e **%d, %s**, etc. `print` doesnt. so If I want to write a line with multiple seperation of strings as I can in `print`, I wont be able to do that. below is example.


```awk
#!/usr/bin/awk

BEGIN {

    i = 2
    print "The value held by i is: ", i, " and its square is: ", i*i;

    printf "The value held by i is: %d and its square is: %i", i, i*i;
exit;
}
```

<br>

2. `printf`, just as C, by default doesnt temrinate with a newline, where as `print` just as python, has end as a newline.



```awk

#!/usr/bin/awk

BEGIN {
    print "this will have a new line";
    printf "this wont have a new line";
    printf " so this will be printed in the same line";
exit;
}
```

<br>
<br>
<br>

----



<br>
<br>


- I also belive that `,` operator adds a space as well, when using it in `print`. (try once)


<br>
<br>

## Input in a script

- we can take input from a user, just a first column ($1).


```
#!/usr/bin/awk -f

BEGIN {
    print "enter a number";
}
{
    print "The square of",$1,"is: ", $1*$1;
}
END {
    print "Done!"
}
```
