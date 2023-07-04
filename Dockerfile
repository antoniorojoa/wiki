FROM node:lts-alpine3.18

WORKDIR /usr/app/
COPY ./ /usr/app/

RUN cd /usr/app/server/ && npm install
#RUN npm install
RUN cd ..
RUN pwd
RUN cd ux && npm install
RUN npm run build
RUN cd ..

RUN node server

