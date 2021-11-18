FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl php -y
RUN pip install -U pip
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
CMD php randi.php
