FROM wallabag/wallabag:2.6.7

ENV SYMFONY_ENV=prod

# Change the port at build time instead of runtime
RUN sed -i 's/listen 80;/listen 9000;/g' /etc/nginx/sites-available/wallabag

EXPOSE 9000
