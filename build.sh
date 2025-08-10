#!/usr/bin/env bash
# exit on error
set -o errexit

# Install Python dependencies
pip install flask==3.1.1 \
            flask-sqlalchemy==3.1.1 \
            flask-login==0.6.3 \
            flask-wtf==1.2.2 \
            wtforms==3.2.1 \
            email-validator==2.2.0 \
            gunicorn==23.0.0 \
            psycopg2-binary==2.9.10 \
            werkzeug==3.1.3 \
            sqlalchemy==2.0.42

# Create upload directories if they don't exist
mkdir -p static/uploads
mkdir -p static/uploads/crew
mkdir -p static/uploads/staff

echo "Build completed successfully"