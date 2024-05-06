FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y \
    && apt install git -y \
    && pip3 install -U pip

COPY requirements.txt /requirements.txt
RUN pip3 install -U -r /requirements.txt

WORKDIR /ben-url-filter-bot
COPY start.sh /ben-url-filter-bot/start.sh

CMD ["/bin/bash", "start.sh"]
