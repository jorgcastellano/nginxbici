FROM nginx:stable-alpine

COPY default.conf /etc/nginx/conf.d/kubernetes.conf

RUN mkdir /app

WORKDIR /app

COPY index.html /app/

EXPOSE 8080