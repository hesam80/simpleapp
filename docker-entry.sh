#!/bin/bash
# gunicorn  -b 0.0.0.0:80  -w 2 app:app
python app.py runserver 0.0.0.0:8000