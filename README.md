
## About
This repository is meant to dive into Django and set up a simple application. It will have a Django server and a React front end.

## Setup
I followed this simple tutorial on DigitalOcean to get Django initially setup. You can see the commands below.
- https://www.digitalocean.com/community/tutorials/how-to-install-django-and-set-up-a-development-environment-on-ubuntu-20-04

**Setup**
```
cd Code
mkdir django-apps
cd django-apps
python3 -m venv venv
source venv/bin/activate
pip list
pip install django
django-admin --version
django-admin startproject testsite
ls -l testsite
ls -l testsite/testsite
cd testsite
// modify settings.py to include localhost in the ALLOWED_HOSTS
vim testsite/settings.py
./manage.py migrate
./manage.py showmigrations
./manage.py createsuperuser
./manage.py runserver localhost:8000
```
