#!/bin/bash
#SBATCH -J mult
#SBATCH -p general
#SBATCH -N 1
#SBATCH -c 20
#SBATCH --mem-per-cpu 6000
#SBATCH -t 23:00:00
#SBATCH -A eeb723
#SBATCH -o multalign_final1.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ava.ghezelayagh@yale.edu

source activate agalma
export BIOLITE_RESOURCES=threads=20,memory=115G
cd ~/scratch60/agalma/scratch/first_try
agalma multalign -i homo -p 73
