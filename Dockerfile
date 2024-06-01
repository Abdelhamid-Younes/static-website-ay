FROM nginx:stable-alpine3.17-slim
LABEL maintainer="Abdelhamid YOUNES"
RUN apk update && \
    apk upgrade && \
    apk add --no-cache curl git
RUN rm -Rf /usr/share/nginx/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["sh", "-c", "envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]