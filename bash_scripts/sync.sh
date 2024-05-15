#!/bin/bash

# To use, update paths and add to user's local crontab:
# */5 * * * *   /var/www/html/www.webmunk.org/bash_scripts/sync.sh

cd /var/www/html/www.webmunk.org

if [[ $(git pull origin deploy 2>/dev/null) != *"Already up-to-date"* ]]; then
	echo "Updated site."
fi
