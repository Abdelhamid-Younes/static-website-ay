FROM nginx:stable
Label maintainer="Abdelhamid YOUNES"
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl && \
    apt-get install -y git
RUN rm -Rf /usr/share/nginx/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html/
EXPOSE 80
CMD nginx -g 'daemon off;'