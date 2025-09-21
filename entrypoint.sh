#!/bin/sh
python manage.py migrate --noinput
python manage.py seed_event --noinput
python manage.py collectstatic --noinput
exec "$@"
