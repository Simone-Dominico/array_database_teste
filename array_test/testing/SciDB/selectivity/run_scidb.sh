#!/bin/bash

for i in {1..10}
do
	#low selectivy in a single chunk
	(time pcm -r -csv=results1$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0, 199, 450, 450));')  >> ./times1$i.txt 2>&1


	#high selectivy in a single chunk
	(time pcm -r  -csv=results2$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0, 150, 300, 300));') >> ./times2$i.txt  2>&1  

	#low selectivy in a few chunks
	(time pcm -r  -csv=results3$i.saida  -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 42, 199, 450, 450));') >> ./times3$i.txt  2>&1  

	#high selectivy in a few chunks
	(time pcm -r  -csv=results4$i.saida  -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 42, 150, 300, 300));') >> ./times4$i.txt  2>&1  

	#low selectivy in a many chunks
	(time pcm -r  -csv=results5$i.saida  -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 100, 199, 450, 450));') >> ./times5$i.txt  2>&1  
#
	#high selectivy in a many chunks
	(time pcm -r  -csv=results6$i.saida  -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 210, 150, 300, 300));') >> ./times6$i.txt  2>&1  

	#exact query exact query
	(time pcm -r -csv=results7$i.saida -- iquery -naq 'consume(subarray(sis, 0, 0, 0, 0, 0, 251, 501, 501));') >> ./times7$i.txt 2>&1 


done
