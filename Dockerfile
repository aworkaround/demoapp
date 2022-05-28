FROM python:3.11-rc-alpine

RUN adduser appuser -D
USER appuser

COPY ./requirements.txt /home/appuser/app/
WORKDIR /home/appuser/app/
RUN PATH="$PATH:/home/appuser/.local/bin"
RUN pip3 install -r ./requirements.txt

COPY . /home/appuser/app/

ENTRYPOINT [ "python3", "./run.py" ]