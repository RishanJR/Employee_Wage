#!/bin/bash -x

echo Welcome to Employee Wage Computation

#Constants
WAGE_PER_HOUR=20
FULL_DAY=8

#Attendance check
ATTENDANCE=$(( RANDOM%2 ))
if [ $ATTENDANCE == 0 ]
then
	echo The employee is present
	DAILY_WAGE=$(( $FULL_DAY*$WAGE_PER_HOUR ))
	echo The Daily Employee wage is $DAILY_WAGE
else
	echo The employee is absent
	echo The Daily Employee wage is 0
fi
