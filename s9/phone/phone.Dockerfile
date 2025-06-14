FROM httpd

ARG port=8080

USER root

RUN apt -y update && \
    apt -y install wget && \
    apt -y install unzip

WORKDIR /usr/local/apache2/htdocs/

COPY ./app/ .

CMD ["httpd-foreground"]
EXPOSE ${port}
