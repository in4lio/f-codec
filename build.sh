#!/bin/sh

python3 -m pip uninstall -y f-codec
python3 setup.py sdist bdist_wheel
python3 -m pip install --user f-codec -f dist
