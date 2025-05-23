FROM wallabag/wallabag:2.6.7

# Set environment for production
ENV SYMFONY_ENV=prod

# Expose port 80 (Railway will handle port mapping)
EXPOSE 80

# The wallabag image uses nginx + php-fpm, not apache
# Let the default entrypoint handle the startup
