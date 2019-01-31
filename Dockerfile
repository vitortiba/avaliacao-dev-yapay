FROM ruby:2.5
LABEL maintainer="Vitor Hideki Yamamoto Tiba <vitor.hitiba@gmail.com>"

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

RUN useradd -ms /bin/bash docker
RUN chown -R docker:docker .
RUN chmod 755 .
USER docker

EXPOSE 3000
