
FROM ubuntu:16.04


RUN apt-get update && apt-get install -y gcc make vim


COPY hello.c /usr/src/myapp/


WORKDIR /usr/src/myapp


RUN gcc -o hello hello.c


CMD ["./hello"]
