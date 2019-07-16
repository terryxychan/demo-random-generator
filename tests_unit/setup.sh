#!/usr/bin/env bash
# setup.sh
pip3 install pipreqs
pipreqs .
pip3 install -r ./requirements.txt
pip3 install -r ./additional_requirements.txt