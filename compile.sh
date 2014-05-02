#! /bin/bash

coffee -o ./bin -c ./src/*.coffee
cp -Rp ./bin/*.js ./public
