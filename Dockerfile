FROM python:2.7.14-jessie

WORKDIR /apps/

COPY bad/ /apps/
COPY requirements.txt /apps/

WORKDIR /apps/

RUN pip install -U pip setuptools && pip install -r /apps/requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["vulpy.py"]
