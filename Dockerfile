# Specify base image.
FROM python:3.9
WORKDIR /app
# Set working directory.
EXPOSE 8000
# Expose port 8000 for your FastAPI server.
COPY requirements.txt .
RUN pip3 install -r requirements.txt
# Install Python requirements using Pip.
COPY . . 
# Copy your codebase into the Docker container.

# Run FastAPI server on the port exposed above.
