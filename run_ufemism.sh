#! /bin/csh -f

#./compile_all_mac.csh

mpiexec  -n 2 ../UFEMISM2.0/UFEMISM_program  config-files/ufemism/config_MISMIPplus_5km_spinup.cfg
