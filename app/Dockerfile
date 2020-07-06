FROM envoyproxy/envoy-dev:latest

RUN apt update
RUN apt install -y nodejs
RUN apt install -y npm
RUN nodejs -v
COPY index.js /index.js
COPY package.json /package.json
COPY . /
RUN npm install
# CMD nodejs index.js

COPY ./service-envoy.yaml /etc/service-envoy.yaml 
ADD ./start_service.sh /usr/local/bin/start_service.sh
RUN chmod u+x /usr/local/bin/start_service.sh
ENTRYPOINT /usr/local/bin/start_service.sh

EXPOSE 80 8000 8081