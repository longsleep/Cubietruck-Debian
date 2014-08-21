#!/bin/bash

echo 0 >/sys/class/pwm/pwmchip0/export
echo 1 >/sys/class/pwm/pwmchip0/pwm0/enable
echo 1000000000 >/sys/class/pwm/pwmchip0/pwm0/period
echo 500000000 >/sys/class/pwm/pwmchip0/pwm0/duty_cycle

echo 1 >/sys/class/pwm/pwmchip0/export
echo 1 >/sys/class/pwm/pwmchip0/pwm1/enable
echo 100000000 >/sys/class/pwm/pwmchip0/pwm1/period
echo 50000000 >/sys/class/pwm/pwmchip0/pwm1/duty_cycle

