#!/bin/bash

var=$1
for i in {1..10}
do

	case $var in
        100)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 50, x, 0, 50, y, 0, 70, z, 0, 70));') >> ./times$i.txt  2>&1 
	;;
        1000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 500, x, 0, 5, y, 0, 50, z, 0, 50));') >> ./times$i.txt  2>&1 
	;;
        5000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 2500, x, 0, 5, y, 0, 25, z, 0, 25));') >> ./times$i.txt  2>&1 
	;;
        10000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 5000, x, 0, 5, y, 0, 18, z, 0, 18));') >> ./times$i.txt  2>&1 
	;;
        15000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 7500, x, 0, 5, y, 0, 11, z, 0,11));') >> ./times$i.txt  2>&1 
	;;
        20000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 10000, x, 0, 5, y, 0, 12, z, 0, 12));') >> ./times$i.txt  2>&1 
	;;
        25000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 12000, x, 0, 5, y, 0, 15, z, 0, 15));') >> ./times$i.txt  2>&1 
	;;
	esac
done

