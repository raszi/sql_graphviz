FROM python:3-alpine

RUN apk add --update --no-cache graphviz
RUN pip install pyparsing

RUN mkdir app
WORKDIR app

COPY ./sql_graphviz.py ./

CMD python sql_graphviz.py
