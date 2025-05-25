# Team Cuda – Annam AI Hackathon Preliminary Round Submission

## Team Members
- K V Srinanda  
- M Manvith Prabhu  
- N Dhruva  
- Abhayjit Singh Gulati  
- Aryan Herur  

---

## Task 1: Soil Image Classification

### Approach
- Used PyTorch with a pre-trained DenseNet for transfer learning.
- Applied data augmentations using `torchvision.transforms`.
- Split data into 80% training and 20% validation.
- Fine-tuned the model and retrained on the full dataset for better generalization.

### Challenges
- Faced class imbalance, with some soil types underrepresented.

### Solution
- Used weighted cross-entropy loss to assign higher penalties to minority class errors, improving prediction balance.

### Results
- Achieved an F1 Score of 1.0 on the public leaderboard.

---

## Task 2: Anomaly Detection (Soil vs Non-Soil)

### Approach
- Extracted semantic features using DINOv2 ViT-S/14.
- Trained a One-Class SVM using only soil images.
- Standardized features with `StandardScaler`.

### Challenges
- One-class training data made it difficult to model the decision boundary.

### Solution
- Used robust DINOv2 embeddings and tuned SVM hyperparameters (`nu`, `gamma`) to avoid overfitting.
- Applied feature normalization to improve model stability.

### Results
- Achieved a public leaderboard score of 0.9326.

---
## Setup and Run Instructions

### 1. Clone the repository
```bash
git clone [<repository_url>](https://github.com/abhayjit07/teamcuda_annam.git)
```
### 2. Create and activate a virtual environment
```bash
python3 -m venv env
source env/bin/activate  # On Windows: env\Scripts\activate
```
### 3. Install dependencies
```bash
pip install -r requirements.txt
```
### 4. Download and prepare the dataset
```bash
bash data/download.sh
```
### 5. Open the notebooks training_task1.ipynb/training_task2.ipynb and run all cells to train models for respective tasks.
### 6. Open the notebooks prediction_task1.ipynb/prediction_task2.ipynb and run all cells for evaluation.
