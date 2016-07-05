FROM python:2.7-alpine
# For building numpy
RUN apk add musl-dev gcc python-dev make cmake g++ gfortran 
RUN pip install  numpy
COPY . /code
ENTRYPOINT ["python", "/code/main.py"]
