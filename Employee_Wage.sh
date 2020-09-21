#!/bin/bash

echo Welcome to Employee Wage Computation

#Constants
WAGE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4

#Attendance check
ATTENDANCE=$(( RANDOM%3 ))

case $ATTENDANCE in
	0)
		echo The employee is present and worked full time
		DAILY_WAGE=$(( $FULL_TIME*$WAGE_PER_HOUR ))
		echo The Daily Employee wage is $DAILY_WAGE
		;;
	1)
		echo The employee is present and worked half time
		DAILY_WAGE=$(( $PART_TIME*$WAGE_PER_HOUR ))
		echo The Daily Employee wage is $DAILY_WAGE
		;;
	2)
		echo The employee is absent
		echo The Daily Employee wage is 0
		;;
	*)
		echo Unprecedented situation occured
		;;
esac
