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
