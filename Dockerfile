FROM ubuntu:latest
MAINTAINER Andy Jang "jang.andy@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
RUN apt-get -y install tesseract-ocr
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]
