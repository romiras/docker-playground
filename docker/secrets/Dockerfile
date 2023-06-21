# syntax = docker/dockerfile:1.2

FROM ruby:2.7.8-slim-buster as rb

RUN bundle config --local freeze 1
RUN bundle config --local without 'test'

WORKDIR /app

# mount secrets file and update bundle config with a secret
RUN --mount=type=secret,id=app_secrets,required,dst=/run/secrets/.secrets bundle config gems.contribsys.com $(grep ^GEMS_CONTRIBSYS= /run/secrets/.secrets | cut -d= -f2-)

RUN ruby -r 'openssl'  -r 'zlib' -r 'json' -e 'puts "OK"'

CMD ["/bin/bash"]
