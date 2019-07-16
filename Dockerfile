FROM python:3-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

COPY test-requirements.txt /usr/src/app/

RUN pip3 install --no-cache-dir -r requirements.txt

RUN pip3 install --no-cache-dir -r test-requirements.txt

COPY . /usr/src/app

WORKDIR /usr/src/app/tests_unit

RUN ["nosetests","--with-xunit"]

EXPOSE 8080

WORKDIR /usr/src/app

ENTRYPOINT ["python3"]

CMD ["-m", "swagger_server"]