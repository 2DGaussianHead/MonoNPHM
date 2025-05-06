#!/bin/bash

# Create the config directory if it doesn't exist
mkdir -p ~/.config/mononphm

# Get the absolute path of the current repository
REPO_PATH=$(pwd)

# Create the .env file with the required environment variables
cat > ~/.config/mononphm/.env << EOL
MONONPHM_CODE_BASE="${REPO_PATH}"
MONONPHM_TRAINING_SUPERVISION="${REPO_PATH}/training_supervision"
MONONPHM_DATA="${REPO_PATH}/data"
MONONPHM_EXPERIMENT_DIR="${REPO_PATH}/experiments"
MONONPHM_DATA_TRACKING="${REPO_PATH}/data_tracking"
MONONPHM_TRACKING_OUTPUT="${REPO_PATH}/tracking_output"
EOL

echo "Environment variables have been set up in ~/.config/mononphm/.env"
echo "Please make sure to create the following directories:"
echo "- ${REPO_PATH}/training_supervision"
echo "- ${REPO_PATH}/data"
echo "- ${REPO_PATH}/experiments"
echo "- ${REPO_PATH}/data_tracking"
echo "- ${REPO_PATH}/tracking_output"

# Create required directories
mkdir -p "${REPO_PATH}/training_supervision"
mkdir -p "${REPO_PATH}/data"
mkdir -p "${REPO_PATH}/experiments"
mkdir -p "${REPO_PATH}/data_tracking"
mkdir -p "${REPO_PATH}/tracking_output"

echo "All required directories have been created."

conda env create -f environment.yml   
conda activate mononphm
pip install gdown

# Install pytorch with CUDA support
conda install pytorch==2.1.1 torchvision==0.16.1 torchaudio==2.1.1 pytorch-cuda=12.1 -c pytorch -c nvidia

# Install PytorchGeometry and helper packages with CUDA support
conda install pyg -c pyg
pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.0.0+cu117.html

# Install Pytorch3D with CUDA support
conda install -c fvcore -c iopath -c conda-forge fvcore iopath
conda install pytorch3d=0.7.4 -c pytorch3d

pip install numpy==1.23
pip install pyopengl==3.1.5

pip install -e .

