FROM python:3.8

ENV PYTHONBUFFERED 1

WORKDIR /app

COPY ./requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt

COPY . /app/
WORKDIR /app/

EXPOSE 8000