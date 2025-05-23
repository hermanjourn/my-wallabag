FROM wallabag/wallabag:2.6.7

ENV SYMFONY_ENV=prod

# Create a startup script that configures nginx for port 9000
RUN echo '#!/bin/bash\n\
# Update nginx to listen on port 9000\n\
sed -i "s/listen 80;/listen 9000;/g" /etc/nginx/sites-available/wallabag\n\
# Start wallabag normally\n\
exec /entrypoint.sh' > /start.sh && chmod +x /start.sh

EXPOSE 9000

CMD ["/start.sh"]
