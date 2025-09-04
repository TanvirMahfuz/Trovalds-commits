# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set a working directory inside the container
WORKDIR /app

# Copy requirements file first for dependency caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Command to run your app
CMD ["python", "prg.py"]
