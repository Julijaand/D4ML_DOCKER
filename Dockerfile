FROM httpd:latest

EXPOSE 15100

COPY business_card/index.html /usr/local/apache2/htdocs/

RUN echo "$PUBLIC_IP_ADDRESS" >> /usr/local/apache2/conf/httpd.conf

RUN rm -f /etc/ssh/sshd_config