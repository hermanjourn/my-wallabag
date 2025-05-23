FROM wallabag/wallabag:2.6.7

# Set environment for production
ENV SYMFONY_ENV=prod

# Expose port for Railway
EXPOSE 80
