FROM python:3.12

WORKDIR /code

# Create and activate virtual environment
ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install packages in the virtual environment (fixed syntax)
RUN pip install flask==3.0.0 \
    && pip install openai==0.28.0 \
    && pip install python-dotenv==1.0.0 \
    && pip install google-generativeai==0.3.2 \
    && pip install pillow==10.1.0 \
    && pip install beautifulsoup4==4.12.2 \
    && pip install joblib==1.3.2 \
    && pip install scipy==1.11.4 \
    && pip install pandas==2.1.3 \
    && pip install scikit-learn==1.5.2 \
    && pip install flask-cors==4.0.0 \
    && pip install "flask[async]"==3.0.0 \
    && pip install gunicorn==21.2.0 \
    && pip install requests

# Copy application files
COPY ./app /code/app
COPY ./run.py /code/run.py
COPY ./config.py /code/config.py
COPY ./precomputed /code/precomputed
COPY ./recipe_dataset.csv /code/recipe_dataset.csv
COPY ./form_data.json /code/form_data.json

# Clean up cache
RUN find /code -type d -name "__pycache__" -exec rm -r {} + 2>/dev/null || true

# Create wsgi.py
RUN echo 'from run import app\n\nif __name__ == "__main__":\n    app.run()' > /code/wsgi.py

# Run with gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:7860", "--workers", "4", "wsgi:app"]