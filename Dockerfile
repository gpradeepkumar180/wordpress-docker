FROM wordpress:php8.2-apache

# Create a script to fix permissions on startup
RUN echo '#!/bin/bash\n\
chown -R www-data:www-data /var/www/html/wp-content\n\
find /var/www/html/wp-content -type d -exec chmod 755 {} \;\n\
find /var/www/html/wp-content -type f -exec chmod 644 {} \;\n\
exec docker-entrypoint.sh apache2-foreground\n\
' > /fix-permissions.sh

RUN chmod +x /fix-permissions.sh

CMD ["/fix-permissions.sh"]
