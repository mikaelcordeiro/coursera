FROM python:3.7

RUN pip3 install flask

WORKDIR /app

COPY . .

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]
