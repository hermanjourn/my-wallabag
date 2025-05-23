FROM wallabag/wallabag:2.6.7

# Railway expects apps to bind to PORT environment variable
ENV SYMFONY_ENV=prod
ENV PORT=80

# Make sure we're listening on all interfaces
EXPOSE $PORT

# Override the default command to use Railway's PORT
CMD ["apache2-foreground"]
