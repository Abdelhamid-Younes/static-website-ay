FROM ubuntu:18.04 as files
LABEL maintainer='Abdelhamid YOUNES'
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install git -y
RUN mkdir /opt/files
RUN git clone https://github.com/diranetafen/static-website-example.git /opt/files/


FROM nginx:stable-alpine3.17-slim
LABEL maintainer='Abdelhamid YOUNES'
COPY --from=files /opt/files/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'