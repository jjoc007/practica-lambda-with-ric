FROM python:buster

RUN pip install awslambdaric
RUN pip install requests

WORKDIR /var/task

COPY app.py /var/task/

ENTRYPOINT ["python3", "-m", "awslambdaric"]

CMD ["app.handler"]
