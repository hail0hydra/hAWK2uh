# awk - the super cool file proecessor

<br>

<img src="./awk.png" alt="awk" width=250 />

<br>
<br>

- although most of us make our way through text processing (and I am talkign about UNIX systems) just by using tools like:

1. grep
2. cut
3. wc
4. head/tail
5. sed

- but one most often overlooked super cool tool is `awk`. So I have started learning it bit by bit. using this [resource](https://www.grymoire.com/Unix/Awk.html)

<br>
<br>


- Just to give you an idea of what you are missing on, lets take example of `cut`.

- I will be using [sample.csv](./sample.csv) for the comparison.

```bash
cut -d ',' -f2,5 sample.csv # prints Name and Phone Number

#that is all? now see awk

awk -F ',' '{print $5, $2}'  # we can reorder the fields in any way... want more?

awk -f ',' '$3 <= 40 {print $2, "\t", $5}' # only selecting data where age <= 40 (conditinal)
```

- this is just a glimpse. try it out yourself.


<br>
<br>


## Tracker

- [here](https://www.grymoire.com/Unix/Awk.html#uh-13)
