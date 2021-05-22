#! /bin/bash
amount=1
while IFS= read -r line
do
    touch ticket${amount}.tex
    echo "\section{${line}}" >> ticket${amount}.tex
    amount=$((amount + 1))
done < tickets.txt