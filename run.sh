#! /bin/bash

# 判断当前是否已经激活venv，没有的话，激活
if [ -z "$VIRTUAL_ENV" ]; then
    source .venv/bin/activate
fi

# 如果传入可参数share，则运行python app.py --share；否则运行python app.py
if [ "$1" = "share" ]; then
    python3 app.py --share
else
    python3 app.py
fi