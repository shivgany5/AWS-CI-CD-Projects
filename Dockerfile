FROM python:3.11-slim

WORKDIR /app

COPY . /app

# Install dependencies (system + awscli)
RUN apt update -y && apt install awscli -y

# Install Python dependencies
RUN pip install -r requirements.txt

# Run the application
CMD ["python", "app.py"]
