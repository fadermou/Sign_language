FROM python:latest

RUN pip install --upgrade pip opencv-python ; \
    apt-get update; apt-get install -y libgl1; apt-get install mediapipe
#install mediapipe correctly 
WORKDIR /app

CMD ["tail", "-f"]