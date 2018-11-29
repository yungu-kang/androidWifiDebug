#!/bin/bash

set -e

echo "#############################################"
echo "############WIFI DEBUGGING SCRIPT############"
echo "#############################################"
echo ""

adb tcpip 5555
sleep 5

device_ip=`adb shell ip route | awk '{print $9}'`
echo "current device ip : $device_ip"

adb connect $device_ip
sleep 5

adb devices

echo "wifi connected success."
echo "Please remove your device connected by usb cable."
