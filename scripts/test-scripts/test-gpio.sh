#!/bin/bash

for i in {192..204}; do
	echo $i
	echo $i > /sys/class/gpio/export
        sleep 10
        echo out > /sys/class/gpio/gpio$i/direction
        echo 1 > /sys/class/gpio/gpio$i/value
done
