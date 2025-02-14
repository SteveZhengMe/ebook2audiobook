#! /bin/bash

if [ -z "$VIRTUAL_ENV" ]; then
    source .venv/bin/activate
fi

if [ "$1" = "share" ]; then
    python3 app.py --share
else
    python3 app.py
fi