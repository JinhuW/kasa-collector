FROM python:3.12.3-slim

WORKDIR /app/kasa_collector

# Copy requirements.txt from the root directory
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Python files from the src directory
COPY src/config.py src/influxdb_storage.py src/kasa_collector.py src/kasa_api.py ./

# Set the command to run your application
CMD ["python", "kasa_collector.py"]