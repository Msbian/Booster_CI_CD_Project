FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3.6 python3-pip

COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 8000
ENTRYPOINT ["python3"]
CMD ["manage.py"]
