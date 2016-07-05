FROM continuumio/anaconda 
COPY . /code
ENTRYPOINT ["python", "/code/main.py"]
