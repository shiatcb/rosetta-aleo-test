FROM 652969937640.dkr.ecr.us-east-1.amazonaws.com/containers/ubuntu:22-04-lts

WORKDIR /data
WORKDIR /app

# Download dependencies
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash
RUN apt-get install -y nodejs
RUN npm install -g typescript

# Download and build rosetta-aleo-test
RUN git clone https://github.com/shiatcb/rosetta-aleo-test
WORKDIR /app/rosetta-aleo-test
RUN git checkout main
RUN npm ci && npm run build

RUN npm install -g pm2
EXPOSE 8080

ENTRYPOINT [ "sh", "./entrypoint.sh" ]
