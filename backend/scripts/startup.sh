#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT edsmoketest_nov1a_49886.wsgi:application
