FROM wallabag/wallabag:2.6.7

ENV SYMFONY_ENV=prod

# Copy custom nginx config to use Railway's PORT
COPY nginx.conf /etc/nginx/sites-available/wallabag

# Expose the port
EXPOSE 80
