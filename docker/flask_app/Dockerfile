FROM ubuntu

RUN apt update
RUN apt upgrade -y

RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip3 install flask

COPY . /opt/source-code

EXPOSE 5000

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
