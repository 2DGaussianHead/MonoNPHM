# Download demo data from Google Drive and move to MONONPHM_DATA_TRACKING
gdown https://drive.google.com/drive/folders/1XHHabTt_IgYPmGZj0Gj1dyTm7dwyGEvb --folder

# Download PIPNet model weights to the snapshots directory
gdown https://drive.google.com/drive/folders/1Mc7iYzMTKSRSoo0sxpdzCeySO1x4Wf4y --folder -O src/mononphm/preprocessing/PIPnet/snapshots

# Create the pretrained directory for MODNet
mkdir -p src/mononphm/preprocessing/MODNet/pretrained
# Download MODNet pretrained model
gdown https://drive.google.com/uc?id=1Nf1ZxeJZJL8Qx9KadcYYyEmmlKhTADxX -O src/mononphm/preprocessing/MODNet/pretrained/modnet_webcam_portrait_matting.ckpt

