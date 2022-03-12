FROM node:15.4.0-alpine3.10
WORKDIR /tmp
COPY main.js /tmp/main.js
RUN  chmod +x /tmp/main.js

ENV  REPL_PORT 4555
EXPOSE 4555/tcp
CMD  ["/tmp/main.js"]