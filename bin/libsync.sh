#!/bin/bash


mkdir out/libfuzzer/queue

sleep 10

while true
do
	for i in out/libfuzzer/in/*
	do
		cp $i out/libfuzzer/queue/id:999000-${i##*/}
	done
	sleep 600
done
