# get python 3.8.6 image 
FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu18.04

# make new dir and copy all the files there
WORKDIR /app
ADD ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
ADD . /app

CMD [ "python", "./code/main.py" ]
