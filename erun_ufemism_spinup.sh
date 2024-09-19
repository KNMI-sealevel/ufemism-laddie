#!/bin/bash
#SBATCH --job-name=ufe-spin
#SBATCH --qos=nf
#SBATCH --ntasks=16
#SBATCH --time=48:00:00
#SBATCH --mem=64G
#SBATCH --output=ufespin.%j.out
#SBATCH --error=ufespin.%j.out

export RUNNAME='ant_16_spinup0b'

# Copy template
cp config-files/ufemism/template_ant16_spinup.cfg config-files/ufemism/config_$RUNNAME.cfg

# Update template
sed -i s+@RUNNAME+$RUNNAME+ config-files/ufemism/config_$RUNNAME.cfg

# Remove directory
rm -r /scratch/nld8942/$RUNNAME

srun ../UFEMISM2.0/UFEMISM_program  config-files/ufemism/config_$RUNNAME.cfg
