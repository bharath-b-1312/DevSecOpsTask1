FROM alpine:latest 
#it can use an existing image or can pull from docker hub
LABEL name=bharath
LABEL email=bharathb1312@outlook.com
#optional but can share your contact details to other teans
RUN yum install python3
RUN yum install pip
RUN pip install Flask==3.0.3
#To make any changes in existing image like installing software
RUN mkdir /opt/pycodes
COPY . /opt/pycodes
#First create a folder and copy the code
#copy will check .dockerignore file exists
#.dockerignore file contains files to be ignored while copying
WORKDIR /opt/pycodes/
#changing current location like cd command
CMD ["python","bb.py"]