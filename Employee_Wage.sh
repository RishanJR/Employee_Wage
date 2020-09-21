#!/bin/bash

echo -e "\nWelcome to Employee Wage Computation \n"

#Constants
WAGE_PER_HOUR=20
FULL_TIME=8
PART_TIME=4
ABSENT=0
MAX_WORKING_DAYS=20
MAX_WORKING_HOURS=100

#Variables
NUMBER_OF_WORKING_DAYS=0
TOTAL_WAGE=0
NUMBER_OF_HOURS=0

#Function to get the work hours
function work_hours() {
	ATTENDANCE=$(( RANDOM%3 ))
	if [ $ATTENDANCE -eq 0 ]
	then
		echo $FULL_TIME
	elif [ $ATTENDANCE -eq 1 ]
	then
		echo $PART_TIME
	elif [ $ATTENDANCE -eq 2 ]
	then
		echo $ABSENT
	else
		echo Unprecedented situation occured
	fi
}

#Attendance check
while [[ $NUMBER_OF_WORKING_DAYS -lt 20 && $NUMBER_OF_HOURS -lt 100 ]]
do

	RES=$( work_hours )

	((NUMBER_OF_HOURS+=RES))
	((NUMBER_OF_WORKING_DAYS++))

	if [ $NUMBER_OF_HOURS -lt 100 ]
	then
		if [ $RES -eq 8 ]
		then
			echo The employee is present and worked full time
		elif [ $RES -eq 4 ]
		then
			echo The employee is present and worked half time
		elif [ $RES -eq 0 ]
		then
			echo The employee is absent
		else
			echo Unpresedented situation occured
		fi

		DAILY_WAGE=$(( $RES*$WAGE_PER_HOUR ))
		echo -e "The Daily Employee wage is $DAILY_WAGE \n"
		TOTAL_WAGE=$(( $TOTAL_WAGE+$DAILY_WAGE ))
	fi

done

echo The total wages earned by the employee is $TOTAL_WAGE
echo The number of hours worked is $NUMBER_OF_HOURS and the number days is $NUMBER_OF_WORKING_DAYS
