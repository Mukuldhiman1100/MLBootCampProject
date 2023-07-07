 # This file is image which will run in docker container

# Collecting python image
FROM python:3.8-slim-buster

# Setting working directory
WORKDIR /app

# Path from where copying my code
COPY . /app

RUN apt update -y && apt install awscli -y

RUN apt-get update && pip install -r requirements.txt

CMD ["python", "app.py"]

