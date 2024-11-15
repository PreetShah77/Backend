FROM python:3.9
WORKDIR /app
COPY requirements.txt .
RUN pip install google-generativeai flask-cors
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5050
CMD ["python", "app.py"]
