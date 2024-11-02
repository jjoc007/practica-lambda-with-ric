FROM python:buster

RUN pip install awslambdaric

COPY app.py /var/task/app.py

ENTRYPOINT ["python3", "-m", "awslambdaric"]
