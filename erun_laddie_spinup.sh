#!/bin/bash
#SBATCH --job-name=lad-spin
#SBATCH --qos=nf
#SBATCH --ntasks=1
#SBATCH --time=2:00:00
#SBATCH --mem=64G
#SBATCH --output=ladspin.%j.out
#SBATCH --error=ladspin.%j.out

export RUNNAME='ant_16_spinup0b'

# Copy template
cp config-files/laddie/template_ant16_spinup.toml config-files/laddie/config_$RUNNAME.toml

# Update template
sed -i s+@RUNNAME+$RUNNAME+ config-files/laddie/config_$RUNNAME.toml

# Run Laddie
# srun --cpus-per-task=1 --cpu-bind=verbose python3 /home/nld8942/models/laddie/runladdie.py config-files/laddie/config_ant16_spinup.toml &
srun python3 /home/nld8942/models/laddie/runladdie.py config-files/laddie/config_$RUNNAME.toml &
