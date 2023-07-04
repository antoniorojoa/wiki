FROM node:lts-alpine3.18

COPY . .

RUN cd server
RUN npm install
RUN cd ../ux
RUN npm install
RUN npm run build
RUN cd ..

RUN node server

