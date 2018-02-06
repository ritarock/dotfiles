FROM ubuntu

RUN apt-get -y update
RUN apt-get install -y build-essential libssl-dev
RUN apt-get install -y curl
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
RUN source ~/.bashrc
RUN nvm install v8.9.4

EXPOSE 3000

CMD ["node","--version"]
