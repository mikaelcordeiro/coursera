FROM Ubuntu

RUN apt update

RUN apt install python
RUN pip install flask

COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run
