#!/bin/sh

rm -r build
rm -r f_codec.egg-info

python3 -m pip uninstall -y f-codec
python3 setup.py sdist
python3 -m pip install -v f-codec -f dist
