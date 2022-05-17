FROM python:3.7.13

WORKDIR /apps/

COPY bad/ /apps/
COPY requirements.txt /apps/

WORKDIR /apps/

RUN pip install -r /apps/requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["vulpy.py"]
