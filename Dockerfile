FROM ubuntu:22.04
RUN apt-get -y update
RUN apt-get -y install curl git

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs

RUN mkdir /etc/slipshow/

#WORKDIR /etc/slipshow/

RUN cd /etc/slipshow/ && npm install -g slipshow

ADD ./md/file.md /etc/slipshow/file.md


RUN slipshow /etc/slipshow/file.md


#ENTRYPOINT ["slipshow","-o","file.html","file.md","--serve"]
#ENTRYPOINT ["npm","start"]
