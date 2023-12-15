FROM python:latest
COPY . /app
RUN pip install flask
CMD ["python" ,"app.py"]
