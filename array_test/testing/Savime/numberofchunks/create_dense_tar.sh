#!/bin/bash
 case $1 in
        100)
	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	#Creating TAR in SAVIME
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,100,1 | implicit,y,int,0,115,1 | implicit,z,int,0,115,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'

	for INDEX in {0..100}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/cem");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,100 | ordered,y,0,115 | ordered,z,0,115", "speed,vp'$INDEX'");'
	done

	./run_savime.sh $1
	;;
        1000)
#################################
	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	#Creating TAR in SAVIME
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,13,1 | implicit,y,int,0,100,1 | implicit,z,int,0,100,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'

	for INDEX in {0..1000}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/cinco");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,13 | ordered,y,0,100 | ordered,z,0,100", "speed,vp'$INDEX'");'
	done
	./run_savime.sh $1
	;;
#####################################
        5000)
	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	#Creating TAR in SAVIME
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,10,1 | implicit,y,int,0,50,1 | implicit,z,int,0,50,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'

	for INDEX in {0..5000}
	do
	    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/mil");'
	    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,10 | ordered,y,0,50 | ordered,z,0,50", "speed,vp'$INDEX'");'
	done

	./run_savime.sh $1

	;;
####################################################
            10000)
		savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
		#Creating TAR in SAVIME
		savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,10,1 | implicit,y,int,0,36,1 | implicit,z,int,0,36,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'

		for INDEX in {0..10000}
		do
		    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/dezmil");'
		    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,10 | ordered,y,0,36 | ordered,z,0,36", "speed,vp'$INDEX'");'
		done

		./run_savime.sh $1

		;;
#######################################################
        20000)

		savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
		Creating TAR in SAVIME
		savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,10,1 | implicit,y,int,0,25,1 | implicit,z,int,0,25,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'

		for INDEX in {0..20000}
		do
		    savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/vintemil");'
		    savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,10 | ordered,y,0,25 | ordered,z,0,25", "speed,vp'$INDEX'");'
		done

		./run_savime.sh $1

		;;
#########################################################
        25000)
	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	#Creating TAR in SAVIME
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,10,1 | implicit,y,int,0,22,1 | implicit,z,int,0,22,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'

	for INDEX in {0..25000}
	do
    		savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/vintecinco");'
    		savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,10 | ordered,y,0,22 | ordered,z,0,22", "speed,vp'$INDEX'");'
	done

	./run_savime.sh $1

	;;
###############################################################
        15000)
	savimec 'create_type("CartesianFieldData3d(simulation,x,y,z)");'
	#Creating TAR in SAVIME
	savimec 'create_tar("sis", "CartesianFieldData3d", "implicit,trial,int,0,1200,1 | implicit,x,int,0,10,1 | implicit,y,int,0,30,1 | implicit,z,int,0,30,1", "speed,float", "trial, simulation, x, x, y, y, z, z");'

	for INDEX in {0..15000}
	do
    		savimec 'create_dataset("vp'$INDEX':float", "@'$(pwd)'/data/quinzemil");'
    		savimec 'load_subtar("sis", "ordered,trial, '$INDEX', '$INDEX' | ordered,x,0,10 | ordered,y,0,30 | ordered,z,0,30", "speed,vp'$INDEX'");'
	done

	./run_savime.sh.sh $1

	;;

esac

