
# Check if kaggle CLI is installed
if ! command -v kaggle &> /dev/null
then
    echo "kaggle command not found. Please install kaggle CLI using 'pip install kaggle'."
    exit 1
fi

# Ensure the .kaggle folder exists and the API key is in place
if [ ! -f ~/.kaggle/kaggle.json ]; then
    echo "kaggle.json not found in ~/.kaggle/. Please place your API token there."
    exit 1
fi

# Set permissions for kaggle.json
chmod 600 ~/.kaggle/kaggle.json

# Define competition names
COMPETITIONS=(
    "soil-classification"
    "soil-classification-part-2"
)

# Download datasets
for COMP in "${COMPETITIONS[@]}"
do
    echo "📥 Downloading dataset for competition: $COMP"
    kaggle competitions download -c "$COMP" --unzip
    echo "✅ Download complete for: $COMP"
done

