FROM python:3.10.6-slim-buster

WORKDIR .
COPY . .

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3-dev \
    python3-setuptools \
    python-dev-is-python3 \
    ffmpeg \
    libasound2-dev \
    portaudio19-dev \
    python3-pyaudio \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install -r requirements.txt

CMD ["python3", "main.py"]
