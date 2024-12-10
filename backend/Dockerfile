FROM python:3.10-buster
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 9000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:9000"]
