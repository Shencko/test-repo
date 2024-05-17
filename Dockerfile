# Use Ubuntu as the base image
FROM ubuntu:latest

# Install dependencies or packages
RUN apt-get update && apt-get install -y \
    curl \
    vim

# [Optional] Add application files
COPY . /app

# [Optional] Set a default command or entry point
CMD ["bash"]
