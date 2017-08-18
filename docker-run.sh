#!/bin/bash

mkdir -p src

docker run -ti --rm -w "/src" -v `pwd`/src/:/src/ -p 4000:4000 malkab/jekyll:latest /bin/bash -c "bundle install && jekyll serve -H 0.0.0.0 -P 4000 --watch --force_polling"
