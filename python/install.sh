#!/usr/bin/env bash

echo "Python Versions..."
echo -n "python: $(python --version)"
echo -n "python2: $(python2 --version)"
echo -n "python3: $(python3 --version)"

echo "PIP Versions..."
echo -n "pip $(pip --version)"
echo -n "pip2 $(pip2 --version)"
echo -n "pip3 $(pip3 --version)"

echo "Installing python packages..."
pip2 install --upgrade setuptools
pip3 install --upgrade setuptools

echo "pip2 install..."
pip2 install pynvim pep8 flake8 pyflakes pylint isort jedi matplotlib pygame selenium
echo

echo "pip2 install..."
pip3 install pynvim pep8 flake8 pyflakes pylint isort jedi matplotlib pygame selenium black
echo
