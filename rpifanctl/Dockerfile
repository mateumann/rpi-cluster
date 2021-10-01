FROM python:3.9.7-alpine
FROM python:3.9.7-slim

#RUN apk update && apk add --no-cache gcc
RUN apt update && apt install -y gcc python3-rpi.gpio
COPY requirements.txt /
RUN pip install --upgrade pip && pip install -r /requirements.txt

COPY rpifanctl.py /
RUN chmod +x /rpifanctl.py

CMD ["/rpifanctl.py"]
