FROM python:3.12-rc-alpine
USER root

WORKDIR /app
RUN adduser appuser -D
RUN chown appuser:appuser /app
RUN chmod 700 /app
USER appuser

COPY ./requirements.txt /app/

ENV PATH="$PATH:/home/appuser/.local/bin"

RUN pip --disable-pip-version-check \
        --no-python-version-warning \
        install -r ./requirements.txt --log /app/logs/pip-requirements.log

COPY . ./

ENTRYPOINT ["gunicorn", "run:app", "-b:80", "--workers=2" ]