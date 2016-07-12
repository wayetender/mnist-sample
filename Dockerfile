FROM python:2.7
RUN pip install numpy
COPY . /code
ENTRYPOINT ["python", "/code/main.py"]
