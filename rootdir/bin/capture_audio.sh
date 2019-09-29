#! /system/bin/sh
echo "record test"
mainmic=1
submic=2
testmainmic=8
testsubmic=9
testenable=1
enable=1
disable=0

if test $2 -eq $enable
then
	cantest=1	
	switch="-Y"
elif test $2 -eq $disable
then
	cantest=1
	switch="-N"
else
	cantest=0
fi

if test $testenable -eq $cantest
then
	if test $1 -eq $mainmic
	then
		loopbacktest $switch $testmainmic
	elif test $1 -eq $submic
	then
		loopbacktest $switch $testsubmic
	else
		echo "input error ctl cmd!"
	fi
else
	echo "input error ctl cmd!"
fi
