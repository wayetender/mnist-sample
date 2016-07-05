FROM python:2.7-alpine
# For building
RUN apk add --no-cache --virtual=build_dependencies musl-dev gcc python-dev make cmake g++ gfortran
RUN pip install  numpy
COPY . /code
ENTRYPOINT ["python", "/code/main.py"]
