FROM node:lts-alpine3.18

WORKDIR /usr/app/
COPY ./ /usr/app/

RUN cd /usr/app/server/ && npm install
RUN ls -la
#RUN npm install
RUN cd ../ux
RUN npm install
RUN npm run build
RUN cd ..

RUN node server

