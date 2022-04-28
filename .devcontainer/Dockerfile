FROM ruby:2.7-bullseye

RUN gem install rufo erb-formatter ruby-debug-ide debase solargraph
RUN gem install sinatra sinatra-contrib
RUN gem install pg

# Set locale as ja_JP.UTF-8
RUN apt-get update && apt-get install -y \
  locales \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN sed -i -E 's/# (ja_JP.UTF-8)/\1/' /etc/locale.gen \
  && locale-gen
ENV LANG ja_JP.UTF-8
