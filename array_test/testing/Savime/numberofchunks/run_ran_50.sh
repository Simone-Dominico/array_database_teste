#!/bin/bash

var=$1
for i in {1..5}
do

	case $var in
        100)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 50, x, 0, 100, y, 0, 300, z, 0, 300));') >> ./times$i.txt  2>&1 
	;;
        1000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 500, x, 0, 50, y, 0, 175, z, 0, 175));') >> ./times$i.txt  2>&1 
	;;
        5000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 2500, x, 0, 30, y, 0, 105, z, 0, 105));') >> ./times$i.txt  2>&1 
	;;
        10000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 5000, x, 0, 40, y, 0, 50, z, 0, 50));') >> ./times$i.txt  2>&1 
	;;
        15000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 7500, x, 0, 30, y, 0, 60, z, 0,60));') >> ./times$i.txt  2>&1 
	;;
        20000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 10000, x, 0, 25, y, 0, 55, z, 0, 55));') >> ./times$i.txt  2>&1 
	;;
        25000)
	#query
	(time pcm -r -csv=results$i.saida -- savimec  'scan(subset(sis, trial, 0, 12000, x, 0, 20, y, 0, 50, z, 0, 50));') >> ./times$i.txt  2>&1 
	;;
	esac
done
