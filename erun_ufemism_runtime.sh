#!/bin/bash
#SBATCH --job-name=ufelad
#SBATCH --qos=nf
#SBATCH --ntasks=16
#SBATCH --mem=64G
#SBATCH --cpus-per-task=1
#SBATCH --time=48:00:00
#SBATCH --output=ufelad.%j.out
#SBATCH --error=ufelad.%j.out

export SPINNAME='ant16_spinup0b'
export RUNNAME ='ant16_runtime1b'

# Remove directory
rm -r /scratch/nld8942/$RUNNAME

# Copy templates
cp config-files/ufemism/template_ant16_runtime.cfg config-files/ufemism/config_$RUNNAME.cfg
cp config-files/laddie/template_ant16_spinup.toml config-files/laddie/config_$RUNNAME.toml

# Update template
sed -i s+@RUNNAME+$RUNNAME+   config-files/ufemism/config_$RUNNAME.cfg
sed -i s+@SPINNAME+$SPINNAME+ config-files/ufemism/config_$RUNNAME.cfg
sed -i s+@RUNNAME+$RUNNAME+   config-files/laddie/config_$RUNNAME.toml

srun --ntasks=15 --overlap --exact --cpu-bind=cores ../UFEMISM2.0/UFEMISM_program  config-files/ufemism/config_$RUNNAME.cfg 

