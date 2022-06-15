FROM python:3.10

COPY requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY iris_classifier.joblib .
COPY app.py .

CMD ["python", "app.py"]