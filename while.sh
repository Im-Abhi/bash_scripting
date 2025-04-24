#!/bin/bash

myvar=1

while [ $myvar -le 5 ]
do
        echo $myvar
        myvar=$(($myvar + 1))        # expression evaluation result is stored back into the myvar variable
        sleep 0.5
done

testfile=~/testfile

while [ -f $testfile ]
do
        echo "Test file exists as of $(date)"
        sleep 1
done

echo "Testfile doesn't exists as of $(date)"
