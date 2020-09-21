#!/bin/bash -x

echo Welcome to Employee Wage Computation

#Attendance check

ATTENDANCE=$(( RANDOM%2 ))
if [ $ATTENDANCE == 0 ]
then
	echo The employee is present
else
	echo The employee is absent
fi
