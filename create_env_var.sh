

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