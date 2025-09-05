from app import create_app
from flask import Flask, jsonify
from flask_cors import CORS
import os

app = create_app()
CORS(app, resources={r"/*": {"origins": "https://nutrimate-production.vercel.app/"}})

# Remove debug mode and only run if directly executed
if __name__ == '__main__':
    port = int(os.environ.get('PORT', 7860))
    app.run(host='0.0.0.0', port=port)