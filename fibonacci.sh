#!/bin/bash

declare PREVIOUS=0
declare CURRENT=1
declare TEMP=0
declare ITERATION=1
declare INDEX=$1

function fibonacci 
{
    if ! [[ "$INDEX" =~ ^[0-9]+$ ]] || [ $INDEX -lt 1 ] || [ $INDEX -gt 92 ]
    then
        echo "Index must be a positive integer between 1 and 92."
        return
    fi

    while [ $ITERATION -lt $INDEX ]
    do
        ITERATION=$(( $ITERATION+1 ))
        TEMP=$(( $CURRENT+$PREVIOUS ))
        PREVIOUS=$CURRENT
        CURRENT=$TEMP
    done

    echo $CURRENT
}
 
fibonacci