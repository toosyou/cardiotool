FROM writerwriter/cardio_web as web
FROM toosyou/cardio_api

# install nginx
RUN wget https://raw.githubusercontent.com/angristan/nginx-autoinstall/master/nginx-autoinstall.sh
RUN chmod +x nginx-autoinstall.sh
RUN HEADLESS=y NGINX_VER=MAINLINE ./nginx-autoinstall.sh

RUN groupadd nginx
RUN useradd -g nginx nginx -s /sbin/nologin

RUN mkdir /app
COPY --from=web /app /app
COPY --from=web /etc/nginx/nginx.conf /etc/nginx/nginx.conf

COPY combine_entry.sh /
RUN chmod +x combine_entry.sh
CMD ["/combine_entry.sh"]