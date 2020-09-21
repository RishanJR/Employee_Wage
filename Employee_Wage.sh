#!/bin/bash

echo Welcome to Employee Wage Computation

#Constants
WAGE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4

#Attendance check
ATTENDANCE=$(( RANDOM%3 ))
if [ $ATTENDANCE == 0 ]		##check for full time
then
	echo The employee is present and worked full time
	DAILY_WAGE=$(( $FULL_TIME*$WAGE_PER_HOUR ))
	echo The Daily Employee wage is $DAILY_WAGE

elif [ $ATTENDANCE == 1 ]	##check for part time
then
	echo The employee is present and worked half time
	DAILY_WAGE=$(( $PART_TIME*$WAGE_PER_HOUR ))
	echo The Daily Employee wage is $DAILY_WAGE

else
	echo The employee is absent
	echo The Daily Employee wage is 0
fi
