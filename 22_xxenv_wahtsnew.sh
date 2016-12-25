#!/usr/bin/env bash

echo "python: pyenv install "
pyenv install -l | grep -v - | tail -3

echo "ruby: rbenv install "
rbenv install -l | grep -v - | tail -3

echo "php: phpenv install "
phpenv install -l | grep -v - | tail -3

echo "nodejs: ndenv install "
ndenv install -l | grep -v - | tail -7
echo "active 6, features 7"
