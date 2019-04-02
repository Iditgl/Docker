FROM alpine:3.9

LABEL maintainer="iditmichael@gmail.com"

COPY . /

RUN apk update && \
    apk add python3 && \
    pip3 install -r requirements.txt
      

CMD [ "python3", "app.py" ]

EXPOSE 5000
