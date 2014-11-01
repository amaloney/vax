#!/usr/bin/env bash

# Add all Ubuntu repositories.
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"

# Update the OS.
apt-get update
apt-get install -y build-essential

# Install various other packages that are useful.
apt-get install -y git
apt-get install -y dateutils

# Install the scientific Python stack.
apt-get install -y python-dev
apt-get install -y python-numpy
apt-get install -y python-scipy
apt-get install -y python-matplotlib
apt-get install -y python-dateutil
apt-get install -y python-tz
apt-get install -y ipython
apt-get install -y ipython-notebook
apt-get install -y python-zmq
apt-get install -y python-tornado
apt-get install -y python-pandas
apt-get install -y python-sympy
apt-get install -y python-nose

# Install the Python web framework.
apt-get install -y python-flask
apt-get install -y python-virtualenv
apt-get install -y python-flask-login
apt-get install -y python-flask-openid
apt-get install -y python-flask-sqlalchemy
apt-get install -y python-flask-migrate
apt-get install -y python-flaskext.wtf
apt-get install -y python-flask-babel
