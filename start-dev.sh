#!/bin/sh
exec erl \
    -pa ebin deps/*/ebin \
    -boot start_sasl \
    -sname myapp_dev \
    -s myapp \
    -s reloader
