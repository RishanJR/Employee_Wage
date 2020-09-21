#!/bin/bash

echo -e "\nWelcome to Employee Wage Computation \n"

#Constants
WAGE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4
MAX_WORKING_DAYS=20

#Variables
NUMBER_OF_WORKING_DAYS=0
TOTAL_WAGE=0

#Attendance check
while [ $NUMBER_OF_WORKING_DAYS -lt 20 ]
do

	ATTENDANCE=$(( RANDOM%3 ))

	case $ATTENDANCE in
		0)
			echo The employee is present and worked full time
			DAILY_WAGE=$(( $FULL_TIME*$WAGE_PER_HOUR ))
			echo -e "The Daily Employee wage is $DAILY_WAGE \n"
			TOTAL_WAGE=$(( $TOTAL_WAGE+$DAILY_WAGE ))
			;;
		1)
			echo The employee is present and worked half time
			DAILY_WAGE=$(( $PART_TIME*$WAGE_PER_HOUR ))
			echo -e "The Daily Employee wage is $DAILY_WAGE \n"
			TOTAL_WAGE=$(( $TOTAL_WAGE+$DAILY_WAGE ))
			;;
		2)
			echo The employee is absent
			echo -e "The Daily Employee wage is 0 \n"
			;;
		*)
			echo Unprecedented situation occured
			;;
	esac

	((NUMBER_OF_WORKING_DAYS++))
done

echo The total wages earned by the employee is $TOTAL_WAGE
