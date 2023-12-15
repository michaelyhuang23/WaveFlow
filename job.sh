#!/bin/bash

#SBATCH --gres=gpu:volta:1
#SBATCH --cpus-per-task=20
#SBATCH -o train_waveflow.txt
#SBATCH --job-name=train_waveflow

module load anaconda/2023a

python train.py --synthesize -c configs/waveflow-h16-r64-bipartize.json
