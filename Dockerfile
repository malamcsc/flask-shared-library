FROM python:3.8.10-slim

WORKDIR /app
COPY requirements.txt /app
COPY . /app

RUN pip install -r requirements.txt
EXPOSE 5001
ENTRYPOINT [ "python" ]
CMD [ "run.py" ]
