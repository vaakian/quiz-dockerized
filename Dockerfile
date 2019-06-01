FROM python:3.7
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /usr/src/app
CMD ["gunicorn", "app:app", "-c", "./gunicorn.conf.py"]