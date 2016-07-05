FROM python:2.7-alpine
RUN pip install --upgrade pip
RUN pip install --upgrade numpy
COPY . /code
ENTRYPOINT ["python", "/code/main.py"]
