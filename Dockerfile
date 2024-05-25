# Usage
# docker build -t volkmbry/hikeplanner .
# docker run --name hikeplanner -e AZURE_STORAGE_CONNECTION_STRING='***' -p 9001:5000 -d volkmbry/hikeplanner

FROM python:3.9-slim

# Copy Files
WORKDIR /usr/src/app
COPY backend/service.py backend/service.py
COPY frontend/build frontend/build

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Docker Run Command
EXPOSE 80
ENV FLASK_APP=/usr/src/app/backend/service.py
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0", "--port=80"]
