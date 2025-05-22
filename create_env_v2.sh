# Create conda environment with Python 3.9
conda create -n mononphm2 python=3.9 -y

# Activate the environment
conda activate mononphm2

pip install gdown

# Install pytorch with CUDA support
conda install pytorch==2.1.1 torchvision==0.16.1 torchaudio==2.1.1 pytorch-cuda=12.1 -c pytorch -c nvidia -y

# Update conda environment with dependencies
conda env update -f environment.yml

# Install PytorchGeometry and helper packages with CUDA support
conda install pyg -c pyg -y
pip uninstall -y pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv
pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.1.1+cu121.html

# Install Pytorch3D with CUDA support
conda install -c fvcore -c iopath -c conda-forge fvcore iopath -y
conda install pytorch3d -c pytorch3d -y
# pip install git+https://github.com/facebookresearch/pytorch3d.git

pip install numpy==1.23
pip install pyopengl==3.1.5

pip install -e .

pip install tyro opencv-python mediapy environs pyvista trimesh imageio scikit-image

pip install point-cloud-utils distinctipy