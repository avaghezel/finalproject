#!/bin/bash
#SBATCH -J treeinform
#SBATCH -p scavenge
#SBATCH -N 1
#SBATCH -c 20
#SBATCH --mem-per-cpu 6000
#SBATCH -t 23:00:00
#SBATCH -A eeb723
#SBATCH -o treeinform_final.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ava.ghezelayagh@yale.edu

source activate agalma
cd ~/scratch60/agalma/data/data
cd ~/scratch60/agalma/data/data
export AGALMA_DB=$PWD/agalma_postwork_quick.sqlite
export BIOLITE_RESOURCES=threads=20,memory=116G
cd ~/scratch60/agalma/scratch/
agalma treeinform -i homo -p 75
