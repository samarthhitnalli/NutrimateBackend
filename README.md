<h1 align="center"> NutriMate: Intelligent Recipe Recommendation API </h1>
<p align="center"> AI-powered backend for smart, image-driven recipe discovery and personalized meal suggestions. </p>

<p align="center">
  <img alt="Build" src="https://img.shields.io/badge/Build-Passing-brightgreen?style=for-the-badge">
  <img alt="Issues" src="https://img.shields.io/badge/Issues-0%20Open-blue?style=for-the-badge">
  <img alt="Contributions" src="https://img.shields.io/badge/Contributions-Welcome-orange?style=for-the-badge">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge">
</p>
<!--
  **Note:** These are static placeholder badges. Replace them with your project's actual badges.
  You can generate your own at https://shields.io
-->

## 📖 Table of Contents
- ⭐ Overview(#-overview)
- ✨ Key Features(#-key-features)
- 🛠️ Tech Stack & Architecture(#️-tech-stack--architecture)
- 📸 Demo & Screenshots(#-demo--screenshots)
- 🚀 Getting Started(#-getting-started)
- 🔧 Usage(#-usage)
- 🤝 Contributing(#-contributing)
- 📝 License(#-license)

## ⭐ Overview

NutriMate is a cutting-edge backend API that revolutionizes recipe discovery by combining advanced machine learning with intuitive, image-based input. It's designed to be the intelligent core for any culinary application, offering highly personalized and flexible recipe recommendations.

> "In an era of diverse dietary preferences and ever-changing culinary trends, finding the perfect recipe can be a daunting task. Traditional recipe platforms often lack the flexibility to adapt to unique ingredient combinations, image-based queries, or nuanced user preferences, leading to culinary frustration and wasted ingredients."

NutriMate elegantly solves this by providing a robust, intelligent API capable of analyzing food images, processing complex user inputs, and delivering highly personalized recipe recommendations from a vast, continually updated database. It transforms the way users interact with recipes, making meal planning effortless and inspiring.

**Inferred Architecture:**
This project is a Python-based RESTful API, built on the Flask framework, designed for scalability and intelligent data processing. It employs a modular architecture featuring distinct services for data ingestion (leveraging multiple web scrapers), advanced AI-driven image analysis (utilizing Google Gemini), a sophisticated machine learning-powered recommendation engine, and robust data management utilities. Precomputed models and features optimize performance for real-time recommendations, while Dockerization ensures seamless deployment and consistent environments.

## ✨ Key Features

*   **Image-to-Recipe Analysis (Gemini AI):** 📸
    Leverage the power of Google's Gemini API to analyze food images uploaded by users. NutriMate intelligently identifies potential ingredients and food types within an image, transforming visual cues into concrete, tailored recipe suggestions. This innovative feature makes recipe discovery more intuitive than ever before.
*   **Flexible Recipe Recommendation Engine:** 🧠
    At its core, NutriMate features a powerful `FlexibleRecipeRecommendationSystem`. This engine generates highly personalized recipe recommendations based on diverse criteria such as user-provided ingredients, dietary preferences, culinary categories, and keyword searches. It utilizes advanced weighted similarity algorithms and precomputed feature matrices for fast, relevant results.
*   **Dynamic Data Ingestion & Preprocessing:** 🌐
    The API is designed to maintain a comprehensive and up-to-date recipe dataset. It includes a suite of robust web scrapers (for platforms like AllRecipes, Food.com, Food Network, Google, and Wikimedia) that automatically collect and process raw recipe data. Intelligent preprocessing utilities handle varied data formats, including complex R-vector strings and list-like fields, ensuring high-quality input for the recommendation engine.
*   **Optimized Feature Engineering:** 📊
    NutriMate employs sophisticated feature engineering techniques to convert raw recipe attributes into machine learning-ready formats. It creates TF-IDF vectors for keywords and ingredients, category dummy variables, and scaled numerical features, all precomputed and stored for efficient, real-time query processing.
*   **Scalable & Deployable API:** 🚀
    Built on the lightweight Flask framework and served by Gunicorn, NutriMate is designed for production-ready deployment. It fully supports Cross-Origin Resource Sharing (CORS) to enable secure communication with diverse frontend applications and includes a `Dockerfile` for easy containerization and consistent deployment across various environments.
*   **Health Monitoring Endpoint:** ❤️‍🩹
    A simple `/health` endpoint is provided to monitor the API's operational status, ensuring it's responsive and available for requests.

## 🛠️ Tech Stack & Architecture

| Technology               | Purpose                                      | Why it was Chosen                                                                      |
| :----------------------- | :------------------------------------------- | :------------------------------------------------------------------------------------- |
| Python                   | Primary programming language                 | Versatility, rich ecosystem for AI/ML, and extensive community support.                |
| Flask                    | Web Framework for API development            | Lightweight, flexible, and robust for building RESTful services, with a clear structure. |
| Google Generative AI     | AI-powered image analysis (Gemini API)       | State-of-the-art capability for multimodal input, enabling image-to-text understanding. |
| Scikit-learn             | Machine Learning Toolkit                     | Comprehensive library for ML tasks including feature engineering and recommendation algorithms. |
| Pandas                   | Data manipulation and analysis               | Essential for handling and processing large datasets, particularly recipe information.   |
| BeautifulSoup4 & Requests| Web Scraping                                 | Powerful and efficient for parsing HTML content and making HTTP requests for data ingestion. |
| Gunicorn                 | WSGI HTTP Server                             | Production-grade server for deploying Flask applications, ensuring performance and reliability. |
| Docker                   | Containerization                             | Facilitates consistent and isolated deployment across various environments.            |
| Joblib / SciPy           | Model persistence & scientific computing     | Efficiently saves and loads precomputed ML models and supports complex numerical operations. |
| Flask-CORS               | Cross-Origin Resource Sharing                | Enables secure communication between the API and diverse frontend applications.        |
| Python-Dotenv            | Environment variable management              | Securely manages sensitive configuration details and API keys.                         |

## 📸 Demo & Screenshots

<img src="https://placehold.co/800x450/2d2d4d/ffffff?text=App+Screenshot+1" alt="App Screenshot 1" width="100%">
<em><p align="center">Illustrative example of the NutriMate API processing a recipe recommendation query.</p></em>
<img src="https://placehold.co/800x450/2d2d4d/ffffff?text=App+Screenshot+2" alt="App Screenshot 2" width="100%">
<em><p align="center">Visual representation of recommended recipes and their key attributes returned by the API.</p></em>

## 🎬 Video Demos

<a href="https://example.com/your-video-link-1" target="_blank">
  <img src="https://placehold.co/800x450/2d2d4d/c5a8ff?text=Watch+Video+Demo+1" alt="Video Demo 1" width="100%">
</a>
<em><p align="center">A demonstration of the NutriMate API's innovative image-to-recipe analysis feature using Gemini AI.</p></em>

## 🚀 Getting Started

Follow these steps to get NutriMate API up and running on your local machine.

### Prerequisites

Before you begin, ensure you have the following installed:

*   **Python 3.9+**
*   **pip** (Python package installer)
*   **Docker** (Optional, but recommended for consistent deployment)

### Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/samarthhitnalli/NutrimateBackend.git
    cd NutrimateBackend
    ```

2.  **Create a virtual environment (recommended):**

    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
    ```

3.  **Install dependencies:**

    ```bash
    pip install -r requirements.txt
    ```

4.  **Set up environment variables:**
    Create a `.env` file in the root directory of the project, based on `config.py`. You'll need API keys for Google Gemini (and potentially OpenAI if configured).

    ```dotenv
    # .env
    # Example for Google Generative AI
    GOOGLE_API_KEY="YOUR_GOOGLE_GEMINI_API_KEY"
    ```
    *Refer to the Google Cloud AI documentation to obtain your Gemini API key.*

## 🔧 Usage

Once the API is installed and configured, you can run it locally and interact with its endpoints.

### Running the API

You can run the application using `gunicorn` (for a production-like setup) or directly with Flask's development server.

**Using Gunicorn (Recommended):**

```bash
gunicorn -w 4 'app.main:create_app()' --bind 0.0.0.0:5000
```
This command starts Gunicorn with 4 worker processes, binding the Flask application created by `create_app()` in `app/main.py` to port 5000.

### API Endpoints

Here are some example `curl` commands to interact with the API:

1.  **Health Check:**

    ```bash
    curl http://localhost:5000/health
    ```
    Expected output:
    ```json
    {"status": "ok"}
    ```

2.  **Get Recipe Recommendations (Example):**
    This endpoint would typically accept a JSON payload with user preferences or ingredients.
    *(Note: The exact endpoint and payload format are inferred from `routes.py` and `form_data.json`.)*

    ```bash
    curl -X POST \
         -H "Content-Type: application/json" \
         -d '{
             "keywords": ["chicken", "rice"],
             "categories": ["dinner", "asian"],
             "min_ingredients": 3,
             "max_calories": 800
         }' \
         http://localhost:5000/api/v1/recommend
    ```
    *Replace the JSON payload with your specific query parameters.*

3.  **Analyze Food Image (Example):**
    This endpoint would likely accept an image file (e.g., via `multipart/form-data`) or a URL to an image. The API then uses Gemini to analyze the image.
    *(Note: The exact endpoint and payload format are inferred from `image_query.py`.)*

    ```bash
    # Example: Analyze an image from a local file
    curl -X POST \
         -H "Content-Type: multipart/form-data" \
         -F "image=@/path/to/your/food_image.jpg" \
         http://localhost:5000/api/v1/analyze-image
    ```
    *Replace `/path/to/your/food_image.jpg` with the actual path to your image file.*

## 🤝 Contributing

We welcome contributions to NutriMate! Whether it's adding new features, improving documentation, or fixing bugs, your help is appreciated.

Please follow these steps to contribute:

1.  **Fork** the repository.
2.  **Create a new branch** (`git checkout -b feature/your-feature-name`).
3.  **Make your changes** and commit them (`git commit -m 'feat: Add new feature'`).
4.  **Push your branch** (`git push origin feature/your-feature-name`).
5.  **Open a Pull Request** to the `main` branch of this repository.

Please ensure your code adheres to the project's coding standards and includes appropriate tests.

## 📝 License

Distributed under the MIT License. See the `LICENSE` file for more information.
