#!/bin/sh
echo "Setting up BSUB settings..."
#BSUB -q gpuv100
#BSUB -gpu "num=1:mode=exclusive_process"
#BSUB -J resnet18
#BSUB -n 1
#BSUB -W 24:00
#BSUB -R "rusage[mem=16GB]"
#BSUB -o logs/%J.out
#BSUB -e logs/%J.err
#BSUB -u s174831@student.dtu.dk
#BSUB -B 
#BSUB -N

echo "Running script..."

module load python3/3.9.6
module load cuda/8.0
module load cudnn/v7.0-prod-cuda8
module load ffmpeg/4.2.2


python3 resnet18-2.py
