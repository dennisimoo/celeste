# Use an official Python runtime as a base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy all files from your repository to the container
COPY . /app

# Expose port 8000 (so Render can access it)
EXPOSE 8000

# Start the Python HTTP server
CMD ["python3", "-m", "http.server", "8000"]
