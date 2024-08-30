FROM base
RUN apt-get install -y nginx php7.0-common php7.0-cli php7.0-fpm php-xml-parser

COPY RemoteControlExamples/PhpRemote/* /var/www/html/
COPY default.conf /etc/nginx/sites-available/default
COPY start.sh /start.sh
RUN mkdir /run/php # for phpfpm 

CMD ["/start.sh"]


