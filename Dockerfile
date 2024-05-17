# Use Ubuntu as the base image
FROM ubuntu:latest

# Install dependencies or packages
RUN apt-get update && apt-get install -y \
    curl \
    vim

# [Optional] Add application files
COPY . /app
# Ensure that your Dockerfile includes a COPY command like this:
COPY run-tests.sh /usr/src/app/run-tests.sh

# After copying, adjust permissions:
RUN chmod +x /usr/src/app/run-tests.sh

# [Optional] Set a default command or entry point
CMD ["bash"]
