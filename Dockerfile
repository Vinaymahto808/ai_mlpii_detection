FROM python:3.11-slim

# Install system dependencies (including Tesseract and OpenCV libs)
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       libgl1 \
       libsm6 \
       libxrender1 \
       tesseract-ocr \
       tesseract-ocr-eng \
    && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy app
COPY . /app

# Expose the Streamlit port
EXPOSE 8501

# Default command to run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
