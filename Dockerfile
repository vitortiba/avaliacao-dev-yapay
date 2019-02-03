FROM ruby:2.5
LABEL maintainer="Vitor Hideki Yamamoto Tiba <vitor.hitiba@gmail.com>"

RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -E -
RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /avaliacao-yapay
WORKDIR /avaliacao-yapay
COPY Gemfile /avaliacao-yapay/Gemfile
COPY Gemfile.lock /avaliacao-yapay/Gemfile.lock
RUN bundle install
COPY . /avaliacao-yapay

RUN useradd -ms /bin/bash docker
RUN chown -R docker:docker .
RUN chmod 777 .
USER docker

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-p", "3000"]
