import os

class Config:
    CSV_FILE_PATH = os.path.join(os.path.dirname(__file__), 'recipe_dataset.csv')
    PRECOMPUTED_DIR = 'precomputed'
    EXTRACTION_API_KEY = os.getenv('EXTRACTION_API_KEY')
    GOOGLE_API_KEY = os.getenv('GOOGLE_API_KEY')

