#!/bin/sh

# Activate conda environment
eval "$(conda shell.bash hook)"
conda activate laddie

# Run Laddie
python3 src/runladdie.py config-files/laddie/config_MISMIPplus_5km_spinup.toml