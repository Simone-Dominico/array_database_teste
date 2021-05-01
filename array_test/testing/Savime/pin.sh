exp=$2
number
OMP_PLACES=$1
forma=$1
unset OMP_PROC_BIND
unset OMP_PLACES
export OMP_PROC_BIND=$forma
export OMP_PLACES
export OMP_DISPLAY_ENV=TRUE
savime -n 3 -m 4 -D

