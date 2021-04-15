FROM python:3-alpine

RUN apk add --update graphviz
RUN pip install pyparsing

RUN mkdir app
WORKDIR app

COPY ./sql_graphviz.py ./

CMD python sql_graphviz.py
