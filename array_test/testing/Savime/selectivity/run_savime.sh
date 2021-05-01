#!/bin/bash

for i in {1..10}
do

	#low selectivity in a single chunk
	(time pcm.x -r -csv=result1$i.saida -- savimec'scan(subset(sis, trial, 0, 0, x, 0, 199, y, 0, 450, z, 0, 450));') >> ./times$i.txt  2>&1 

	#high selectivity in a single chunk
	(time pcm.x -r -csv=result2$i.saida -- savimec'scan(subset(sis, trial, 0, 0, x, 0, 150, y, 0, 300, z, 0, 300));') >> ./times$i.txt  2>&1 

	#low selectivity in a few chunks
	(time pcm.x -r -csv=result3$i.saida -- savimec'scan(subset(sis, trial, 0, 100, x, 0, 199, y, 0, 450, z, 0, 450));') >> ./times$i.txt  2>&1 

	#high selectivity in a few chunks
	(time pcm.x -r -csv=result4$i.saida -- savimec'scan(subset(sis, trial, 0, 100, x, 0, 150, y, 0, 300, z, 0, 300));') >> ./times$i.txt  2>&1 

	#low selectivity in many chunks
	(time pcm.x -r -csv=result5$i.saida -- savimec'scan(subset(sis, x, 0, 199, y, 0, 450, z, 0, 450));') >> ./times$i.txt  2>&1 

	#high selectivity in many chunks
	(time pcm.x -r -csv=result6$i.saida -- savimec'scan(subset(sis, x, 0, 150, y, 0, 300, z, 0, 300));') >> ./times$i.txt  2>&1 

	#exact query
	(time pcm.x -r -csv=result7$i.saida -- savimec'scan(subset(sis, trial, 0, 0, x, 0, 250, y, 0, 500, z, 0, 500));') >> ./times$i.txt  2>&1 

done
