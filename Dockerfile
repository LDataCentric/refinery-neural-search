FROM python:3.8

WORKDIR /program

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY / .

CMD [ "/usr/local/bin/uvicorn", "--host", "0.0.0.0", "--port", "80", "app:app" ]