#!/bin/bash
# SLURM batch job options
# https://slurm.schedmd.com/sbatch.html
#SBATCH --name=Meltingpot
#SBATCH --partition=gpu
#SBATCH --qos=gpu
#SBATCH --gres=gpu:1

# Stop on errors
set -e

# Using GPUs on Stanage
# https://docs.hpc.shef.ac.uk/en/latest/stanage/GPUComputingStanage.html

# Load modules
# https://docs.hpc.shef.ac.uk/en/latest/stanage/software/libs/cudnn.html
module load cuDNN

# View CUDA information
# https://docs.nvidia.com/deploy/nvidia-smi/index.html
nvidia-smi
nvcc --version

# Run container
/usr/local/bin/apptainer test --nv meltingpot.sif
