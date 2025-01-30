# Use an official Python base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port (default Flask/fastAPI port)
EXPOSE 5000

# Default command for the container
CMD ["bash"]
