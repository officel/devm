#!/bin/sh
anyenv install rbenv
anyenv install plenv
anyenv install pyenv
anyenv install phpenv
anyenv install ndenv
anyenv install goenv
exec $SHELL -l
