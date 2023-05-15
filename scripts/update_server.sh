#/bin/sh
set -e
git pull origin odoo
docker build -t odoo:16.0 .
docker compose down
docker compose up -d
docker system prune -f
