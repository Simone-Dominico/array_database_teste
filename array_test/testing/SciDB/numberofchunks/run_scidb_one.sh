#!/bin/bash

var=$1
for i in {1..10}
do

	case $var in
        100)
	#query
	(time pcm -r -csv=results$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0,  50, 50, 70, 70));') >> ./times$i.txt  2>&1 
	;;
        1000)
	#query
	(time pcm -r -csv=results$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0, 500,5,50,50));') >> ./times$i.txt  2>&1 
	;;
        5000)
	#query
	(time pcm -r -csv=results$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0, 2500,5,25,25));') >> ./times$i.txt  2>&1 
	;;
        10000)
	#query
	(time pcm -r -csv=results$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0, 5000,5,18,18));') >> ./times$i.txt  2>&1 
	;;
        15000)
	#query
	(time pcm -r -csv=results$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0, 7500,5,11,11));') >> ./times$i.txt  2>&1 
	;;
        20000)
	#query
	(time pcm -r -csv=results$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0,  10000,5,12,12));') >> ./times$i.txt  2>&1 
	;;
        25000)
	#query
	(time pcm -r -csv=results$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0, 12000,5,15,15));') >> ./times$i.txt  2>&1 
	;;
	esac
done
