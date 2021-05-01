#!/bin/bash

 case $1 in
        100)
	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,200,1 | implicit,y,int,0,600,1 | implicit,z,int,0,600,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'
	for INDEX in {0..99}
	do
    	   savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/quinhentos");'
    	   savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,200 | ordered,y,0,600 | ordered,z,0,600", "speed,vp'$INDEX'");'
	done
	./run_ran_50.sh $1
        ;;
        1000)
###10000###
	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,100,1 | implicit,y,int,0,350,1 | implicit,z,int,0,350,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'
	for INDEX in {0..999}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/mil");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,100 | ordered,y,0,350 | ordered,z,0,350", "speed,vp'$INDEX'");'
	done
	./run_ran_50.sh $1
        ;;
        5000)


	####5000####

	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,5200,1 | implicit,x,int,0,60,1 | implicit,y,int,0,210,1 | implicit,z,int,0,210,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'
	for INDEX in {0..4999}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/cinco");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,60 | ordered,y,0,210 | ordered,z,0,210", "speed,vp'$INDEX'");'
	done
	./run_ran_50.sh $1
        ;;
        10000)

	###10000###
	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,10200,1 | implicit,x,int,0,80,1 | implicit,y,int,0,100,1 | implicit,z,int,0,100,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'
	for INDEX in {0..9999}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/dez");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,80 | ordered,y,0,100 | ordered,z,0,100", "speed,vp'$INDEX'");'
	done
	./run_ran_50.sh $1
        ;;
        15000)

	###15000###

	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,15200,1 | implicit,x,int,0,60,1 | implicit,y,int,0,120,1 | implicit,z,int,0,120,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'
	for INDEX in {0..14999}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/quinze");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,60 | ordered,y,0,120 | ordered,z,0,120", "speed,vp'$INDEX'");'
	done
	./run_ran_50.sh $1
        ;;
        20000)
	###20000###

	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,20200,1 | implicit,x,int,0,50,1 | implicit,y,int,0,110,1 | implicit,z,int,0,110,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'
	for INDEX in {0..19999}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/vintemil");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,50 | ordered,y,0,110 | ordered,z,0,110", "speed,vp'$INDEX'");'
	done
	./run_ran_50.sh $1
        ;;        
        250000)
	###20000###

	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,20200,1 | implicit,x,int,0,40,1 | implicit,y,int,0,100,1 | implicit,z,int,0,100,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'
	for INDEX in {0..24999}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/vintecincomil");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,40 | ordered,y,0,100 | ordered,z,0,100", "speed,vp'$INDEX'");'
	done
	./run_ran_50.sh $1
        ;;        
esac
