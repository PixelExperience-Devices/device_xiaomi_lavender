#! /system/bin/sh
echo "playback test"
spk=1
rec=2
testspk=6
testrec=7
testenable=1
enable=1
disable=0

if test $2 -eq $enable
then
	cantest=1	
	switch="-Y"
elif test $2 -eq $disable
then
	cantest=0
	switch="-N"
	echo "do not support stop playback!"
else
	cantest=0
fi

if test $testenable -eq $cantest
then
	if test $1 -eq $spk
	then
		loopbacktest $switch $testspk $3 $4
	elif test $1 -eq $rec
	then
		loopbacktest $switch $testrec $3 $4
	else
		echo "input error ctl cmd!"
	fi
else
	echo "input error ctl cmd!"
fi
