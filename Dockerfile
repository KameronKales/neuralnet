FROM ubuntu:latest
RUN apt-get update -y 
RUN apt-get install -y python-pip python-dev build-essential
COPY . .
WORKDIR . 
EXPOSE 5000
CMD ["python", "server.py"]