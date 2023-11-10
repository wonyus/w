FROM python:3.9.18-slim

WORKDIR /app

COPY requirements.txt requirements.txt
COPY bot bot
COPY launcher.py launcher.py 

RUN pip3 install -r requirements.txt

ARG TOKEN
ENV TOKEN=$TOKEN
CMD ["python3", "launcher.py"]
