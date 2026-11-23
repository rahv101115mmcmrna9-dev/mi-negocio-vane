#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python PROYECTO_NEGOCIO/manage.py collectstatic --no-input
python PROYECTO_NEGOCIO/manage.py migrate
