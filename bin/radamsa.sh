#!/bin/bash

mkdir out/radamsa/queue

count=0

while true
do
        let "count+=1"

        for file in out/fuzzer3/queue/*
        do
                /opt/enfuzzer/bin/radamsa $file > out/radamsa/queue/${file##*/}--"$count"
        done

        sleep 600
done

