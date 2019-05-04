#!/bin/bash

rm -rf out/libfuzzer/in
mkdir out/libfuzzer/in

cp seed/* out/libfuzzer/in


while true
do
	./libapp  out/libfuzzer/in/  >/dev/null 2>&1
	sleep 60
done
