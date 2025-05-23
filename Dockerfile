FROM wallabag/wallabag:2.6.7

ENV SYMFONY_ENV=prod

# Find nginx config files and fix the port
RUN find /etc/nginx -name "*wallabag*" -o -name "*.conf" | head -10 && \
    find /etc/nginx -type f -exec grep -l "listen 80" {} \; | head -5 && \
    sed -i 's/listen 80/listen 9000/g' /etc/nginx/sites-enabled/default || \
    sed -i 's/listen 80/listen 9000/g' /etc/nginx/conf.d/default.conf || \
    echo "Config file not found, will try runtime approach"

EXPOSE 9000
