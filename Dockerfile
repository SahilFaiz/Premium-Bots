FROM python:3.10.8-slim-buster

# Update and install dependencies
RUN apt update && apt upgrade -y \
    && apt install -y git

# Copy requirements.txt and install dependencies
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

# Set the working directory
WORKDIR /ben-url-filter-bot

# Copy the start.sh script
COPY start.sh /ben-url-filter-bot/start.sh

# Set execute permissions for the start.sh script
RUN chmod +x /ben-url-filter-bot/start.sh

# CMD to run the start.sh script
CMD ["/ben-url-filter-bot/start.sh"]
