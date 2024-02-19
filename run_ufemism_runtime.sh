#! /bin/csh -f

#./compile_all_mac.csh

mpiexec  -n 4 ../UFEMISM2.0/UFEMISM_program  config-files/ufemism/config_MISMIPplus_1km_runtime.cfg
