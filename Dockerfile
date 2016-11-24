FROM ubuntu:latest
RUN apt-get update -y 
RUN apt-get install -y python-pip python-dev build-essential
COPY . .
WORKDIR .
RUN export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0-cp27-none-linux_x86_64.whl
RUN pip install --upgrade $TF_BINARY_URL 
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "server.py"]