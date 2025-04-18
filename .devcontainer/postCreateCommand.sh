#!/usr/bin/env bash

set -xe

python -m venv .venv

.venv/bin/pip install -r requirements.txt

pre-commit install --install-hooks

echo '!!!'
echo 'Restart terminal after ~10 seconds if Python is not properly sourced'
echo '!!!'
