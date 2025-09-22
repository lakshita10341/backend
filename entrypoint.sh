#!/bin/sh
python manage.py migrate --noinput
python manage.py seed_event
python manage.py collectstatic --noinput
exec gunicorn web_analytics_backend.wsgi:application --bind 0.0.0.0:$PORT

