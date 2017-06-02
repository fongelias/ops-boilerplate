#Use Python runtime as base image
FROM python:2.7-slim

#Set the working directory
WORKDIR /app

#Copy current directory contents into the container
Add . /app

#Install required packages
RUN pip install -r requirements.txt

#Make port 80 available
EXPOSE 80

#Define environment variables
ENV NAME World

#Run app.py when the container launches
CMD [“python”, “app.py”]