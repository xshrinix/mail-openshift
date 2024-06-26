from python:3.7-slim
#RUN apk add --no-cache py3-pip && pip3 install --upgrade pip
#pip install --upgrade pip
WORKDIR /app
COPY . /app

RUN pip install -r requirement.txt
RUN chgrp -R 0 /app && chmod -R g=u /app
EXPOSE 8000

# ENTRYPOINT ["crossbar", "start", "--cbdir", "/app/.crossbar"]
ENTRYPOINT ["python3", "helloworld.py"]
