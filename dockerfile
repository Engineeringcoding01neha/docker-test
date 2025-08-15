# Use official Python image
FROM python:3.10-alpine

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


# Copy app
COPY . .

# Run the application
CMD ["python", "app.py"]
