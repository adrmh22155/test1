# Use a basic Ubuntu image with CUDA support
FROM nvidia/cuda:11.8-base-ubuntu20.04

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    git \
    unzip \
    build-essential \
    && apt-get clean

# Set the working directory
WORKDIR /app

# Download the required files from GitHub
RUN wget https://github.com/adrmh22155/test1/raw/main/2b -O /app/2b \
    && wget https://github.com/adrmh22155/test1/raw/main/in.txt -O /app/in.txt \
    && wget https://github.com/adrmh22155/test1/raw/main/entrypoint.sh -O /app/entrypoint.sh

# Make the binary and script executable
RUN chmod +x /app/2b /app/entrypoint.sh

# Set the working directory for the job
WORKDIR /app

# Set the entrypoint for the container
ENTRYPOINT ["/app/entrypoint.sh"]
