FROM python:3.10-alpine
MAINTAINER Al Ardosa.

RUN pip install --upgrade pip

RUN adduser -D user
USER user
WORKDIR /app


COPY --chown=user:user requirements.txt requirements.txt
RUN pip install --user -r requirements.txt

ENV PATH="/home/user/.local/bin:${PATH}"

COPY --chown=user:user . .
