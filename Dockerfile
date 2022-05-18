FROM python:3.7

WORKDIR /apps/

COPY bad/ /apps/

WORKDIR /apps/

RUN pip install -r /apps/requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["vulpy.py"]
