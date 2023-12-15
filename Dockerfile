FROM python:latest
COPY . /app
RUN pip install Flask
CMD ["python" ,"app.py"]
