FROM nodered/node-red:latest

COPY settings.js /data/settings.js
COPY flows.json /data/flows.json
COPY package.json /data/package.json

RUN cd /data && npm install --unsafe-perm --no-fund --no-audit

ENV TZ=America/Sao_Paulo
