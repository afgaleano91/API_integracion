FROM python:3.7.4-alpine


RUN apk add --no-cache py3-pip \
    && apk add gcc libc-dev g++ \
    && apk add libffi-dev libxml2 libffi-dev 


WORKDIR /app

COPY  . /app/

RUN pip3 --no-cache-dir install -r requirements.txt

CMD ["python3", "api_integracion/app/__init__.py"]