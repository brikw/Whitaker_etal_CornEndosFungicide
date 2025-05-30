#!/bin/bash
#SBATCH --job-name="itsx"
#SBATCH --time=1:00:00   # walltime 
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32   # 16 processor core(s) per node X 2 threads per core
#SBATCH --partition=short    # partition type
#SBATCH --mail-user=briana.whitaker@usda.gov
#SBATCH --mail-type=FAIL

cd /project/mpm_fhb_genomics/whitaker
date
pwd
module load itsx/1.1b

ITSx -i CDF_OTU97_cons.fasta --complement TRUE --cpu 16 --save_regions all --preserve TRUE -o CDF_OTU97

date
